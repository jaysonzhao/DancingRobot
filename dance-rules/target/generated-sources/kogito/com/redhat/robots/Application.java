package com.redhat.robots;

import org.kie.kogito.Config;
import org.kie.kogito.process.Processes;
import org.kie.kogito.uow.UnitOfWorkManager;

@javax.inject.Singleton()
public class Application implements org.kie.kogito.Application {

    @javax.inject.Inject()
    javax.enterprise.inject.Instance<org.kie.kogito.event.EventPublisher> eventPublishers;

    @org.eclipse.microprofile.config.inject.ConfigProperty(name = "kogito.service.url", defaultValue = "")
    java.lang.String kogitoService;

    @javax.inject.Inject()
    org.kie.kogito.Config config;

    DecisionModels decisionModels = new DecisionModels();

    public Config config() {
        return config;
    }

    public UnitOfWorkManager unitOfWorkManager() {
        return config().process().unitOfWorkManager();
    }

    @javax.annotation.PostConstruct()
    public void setup() {
        if (config().process() != null) {
            if (eventPublishers != null) {
                eventPublishers.forEach(publisher -> unitOfWorkManager().eventManager().addPublisher(publisher));
            }
            unitOfWorkManager().eventManager().setService(kogitoService);
        }
    }

    public DecisionModels decisionModels() {
        return decisionModels;
    }

    public static class DecisionModels implements org.kie.kogito.decision.DecisionModels {

        static org.kie.dmn.api.core.DMNRuntime dmnRuntime = org.kie.kogito.dmn.DMNKogito.createGenericDMNRuntime(new java.io.InputStreamReader(Application.class.getResourceAsStream("/RobotMove.dmn")));

        public org.kie.kogito.decision.DecisionModel getDecisionModel(java.lang.String namespace, java.lang.String name) {
            return new org.kie.kogito.decision.DecisionModel() {

                @Override
                public org.kie.dmn.api.core.DMNContext newContext(java.util.Map<String, Object> variables) {
                    return new org.kie.dmn.core.impl.DMNContextImpl(variables);
                }

                @Override
                public org.kie.dmn.api.core.DMNResult evaluateAll(org.kie.dmn.api.core.DMNContext context) {
                    return dmnRuntime.evaluateAll(dmnRuntime.getModel(namespace, name), context);
                }

                @Override
                public org.kie.dmn.api.core.DMNResult evaluateDecisionService(org.kie.dmn.api.core.DMNContext context, java.lang.String decisionServiceName) {
                    return dmnRuntime.evaluateDecisionService(dmnRuntime.getModel(namespace, name), context, decisionServiceName);
                }
            };
        }
    }
}
