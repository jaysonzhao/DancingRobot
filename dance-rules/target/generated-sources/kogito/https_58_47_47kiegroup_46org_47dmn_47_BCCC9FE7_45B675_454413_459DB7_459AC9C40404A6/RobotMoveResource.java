package https_58_47_47kiegroup_46org_47dmn_47_BCCC9FE7_45B675_454413_459DB7_459AC9C40404A6;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.kie.kogito.Application;
import org.kie.kogito.dmn.rest.DMNEvaluationErrorException;

@Path("/RobotMove")
public class RobotMoveResource {

    @javax.inject.Inject()
    Application application;

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Object dmn(java.util.Map<String, Object> variables) {
        org.kie.kogito.decision.DecisionModel decision = application.decisionModels().getDecisionModel("https://kiegroup.org/dmn/_BCCC9FE7-B675-4413-9DB7-9AC9C40404A6", "RobotMove");
        org.kie.kogito.dmn.rest.DMNResult result = new org.kie.kogito.dmn.rest.DMNResult(decision.evaluateAll(decision.newContext(variables)));
        if (!result.hasErrors()) {
            return result.getDmnContext();
        } else {
            throw new DMNEvaluationErrorException(result);
        }
    }

    @javax.ws.rs.ext.Provider
    public static class DMNEvaluationErrorExceptionMapper implements javax.ws.rs.ext.ExceptionMapper<org.kie.kogito.dmn.rest.DMNEvaluationErrorException> {

        public javax.ws.rs.core.Response toResponse(org.kie.kogito.dmn.rest.DMNEvaluationErrorException e) {
            return javax.ws.rs.core.Response.status(javax.ws.rs.core.Response.Status.INTERNAL_SERVER_ERROR).entity(e.getResult()).build();
        }
    }
}
