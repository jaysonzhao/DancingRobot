package com.redhat.robots;

import org.kie.kogito.process.ProcessConfig;
import org.kie.kogito.process.ProcessEventListenerConfig;
import org.kie.kogito.process.WorkItemHandlerConfig;
import org.kie.kogito.rules.RuleConfig;
import org.kie.kogito.rules.RuleEventListenerConfig;
import org.kie.kogito.uow.UnitOfWorkManager;

@javax.inject.Singleton()
public class ApplicationConfig implements org.kie.kogito.Config {

    protected ProcessConfig processConfig;

    protected RuleConfig ruleConfig;

    @Override
    public ProcessConfig process() {
        return processConfig;
    }

    @Override
    public RuleConfig rule() {
        return ruleConfig;
    }

    @javax.annotation.PostConstruct()
    public void init() {
        processConfig = null;
        ruleConfig = null;
    }
}
