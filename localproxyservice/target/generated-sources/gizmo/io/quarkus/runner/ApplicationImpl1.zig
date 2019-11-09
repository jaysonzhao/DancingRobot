// Class: io/quarkus/runner/ApplicationImpl1
//     Access =  public synthetic
//     Extends: io/quarkus/runtime/Application

// DO NOT MODIFY.  This is not actually a source file; it is a textual representation of generated code.
// Use only for debugging purposes.

// Auto-generated constructor
// Access: public
Method <init> : V
(
    // (no arguments)
) {
    ALOAD 0
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/runtime/Application#<init>
    RETURN
    
}

// Access: static
Field STARTUP_CONTEXT : Lio/quarkus/runtime/StartupContext;

// Access: protected final
Method doStart : V
(
    arg 1 = [Ljava/lang/String;
) {
    ** label1
    LDC (String) "java.util.logging.manager"
    LDC (String) "org.jboss.logmanager.LogManager"
    // Method descriptor: (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    INVOKESTATIC java/lang/System#setProperty
    POP
    LDC (String) "io.netty.allocator.maxOrder"
    LDC (String) "1"
    // Method descriptor: (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    INVOKESTATIC java/lang/System#setProperty
    POP
    // Method descriptor: ()V
    INVOKESTATIC io/quarkus/runtime/SubstrateRuntimePropertiesRecorder#doRuntime
    // Method descriptor: ()V
    INVOKESTATIC io/quarkus/runtime/Timing#mainStarted
    // Field descriptor: Lio/quarkus/runtime/StartupContext;
    GETSTATIC io/quarkus/runner/ApplicationImpl1#STARTUP_CONTEXT
    ASTORE 2
    ** label2
    // Method descriptor: ()V
    INVOKESTATIC io/quarkus/runtime/generated/RunTimeConfig#getRunTimeConfiguration
    NEW io/quarkus/deployment/steps/VertxHttpProcessor$cors4
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/VertxHttpProcessor$cors4#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/VertxCoreProcessor$eventLoopCount6
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/VertxCoreProcessor$eventLoopCount6#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/ThreadPoolSetup$createExecutor3
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/ThreadPoolSetup$createExecutor3#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/NettyProcessor$eagerlyInitClass7
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/NettyProcessor$eagerlyInitClass7#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/LoggingResourceProcessor$setupLoggingRuntimeInit2
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/LoggingResourceProcessor$setupLoggingRuntimeInit2#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/VertxCoreProcessor$buildWeb5
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/VertxCoreProcessor$buildWeb5#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/VertxHttpProcessor$initializeRouter13
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/VertxHttpProcessor$initializeRouter13#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/VertxCoreProcessor$build20
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/VertxCoreProcessor$build20#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/ConfigBuildStep$validateConfigProperties22
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/ConfigBuildStep$validateConfigProperties22#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/UndertowBuildStep$boot25
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/UndertowBuildStep$boot25#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/VertxHttpProcessor$finalizeRouter26
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/VertxHttpProcessor$finalizeRouter26#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/LifecycleEventsBuildStep$startupEvent27
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/LifecycleEventsBuildStep$startupEvent27#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    LDC (String) "0.23.2"
    LDC (String) "cdi, rest-client, resteasy, resteasy-jsonb"
    LDC (String) "prod"
    LDC (Boolean) false
    // Method descriptor: (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    INVOKESTATIC io/quarkus/runtime/Timing#printStartupTime
    ** label3
    GOTO label4
    ** label5
    ASTORE 3
    ALOAD 3
    // Method descriptor: ()V
    INVOKEVIRTUAL java/lang/Throwable#printStackTrace
    ALOAD 2
    // Method descriptor: ()V
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#close
    NEW java/lang/RuntimeException
    DUP
    LDC (String) "Failed to start quarkus"
    ALOAD 3
    // Method descriptor: (Ljava/lang/String;Ljava/lang/Throwable;)V
    INVOKESPECIAL java/lang/RuntimeException#<init>
    CHECKCAST java/lang/Throwable
    ATHROW
    ** label6
    GOTO label4
    // Try from label2 to label3
    // Catch java/lang/Throwable by going to label5
    ** label4
    RETURN
    ** label7
    
}

// Access: protected final
Method doStop : V
(
    // (no arguments)
) {
    ** label1
    // Field descriptor: Lio/quarkus/runtime/StartupContext;
    GETSTATIC io/quarkus/runner/ApplicationImpl1#STARTUP_CONTEXT
    // Method descriptor: ()V
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#close
    RETURN
    ** label2
    
}

// Access: public static
Method <clinit> : V
(
    // (no arguments)
) {
    ** label1
    LDC (String) "java.util.logging.manager"
    LDC (String) "org.jboss.logmanager.LogManager"
    // Method descriptor: (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    INVOKESTATIC java/lang/System#setProperty
    POP
    LDC (String) "io.netty.allocator.maxOrder"
    LDC (String) "1"
    // Method descriptor: (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    INVOKESTATIC java/lang/System#setProperty
    POP
    // Method descriptor: ()V
    INVOKESTATIC io/quarkus/runtime/Timing#staticInitStarted
    NEW io/quarkus/runtime/StartupContext
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/runtime/StartupContext#<init>
    ASTORE 0
    ALOAD 0
    // Field descriptor: Lio/quarkus/runtime/StartupContext;
    PUTSTATIC io/quarkus/runner/ApplicationImpl1#STARTUP_CONTEXT
    ** label2
    NEW io/quarkus/deployment/steps/RestClientProcessor$setup1
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/RestClientProcessor$setup1#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/NettyProcessor$createExecutors8
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/NettyProcessor$createExecutors8#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/VertxCoreProcessor$ioThreadDetector9
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/VertxCoreProcessor$ioThreadDetector9#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/LoggingResourceProcessor$setupLoggingStaticInit10
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/LoggingResourceProcessor$setupLoggingStaticInit10#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/UndertowBuildStep$servletContextBean11
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/UndertowBuildStep$servletContextBean11#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/SubstrateConfigBuildStep$build15
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/SubstrateConfigBuildStep$build15#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/SubstrateSystemPropertiesBuildStep$writeNativeProps17
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/SubstrateSystemPropertiesBuildStep$writeNativeProps17#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/BlockingOperationControlBuildStep$blockingOP14
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/BlockingOperationControlBuildStep$blockingOP14#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/RuntimeBeanProcessor$build16
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/RuntimeBeanProcessor$build16#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/RestClientProcessor$registerProviders18
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/RestClientProcessor$registerProviders18#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/ArcProcessor$generateResources19
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/ArcProcessor$generateResources19#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/ResteasyServerCommonProcessor$setupInjection23
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/ResteasyServerCommonProcessor$setupInjection23#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/UndertowArcIntegrationBuildStep$integrateRequestContext21
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/UndertowArcIntegrationBuildStep$integrateRequestContext21#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    NEW io/quarkus/deployment/steps/UndertowBuildStep$build24
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/deployment/steps/UndertowBuildStep$build24#<init>
    CHECKCAST io/quarkus/runtime/StartupTask
    ALOAD 0
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;)V
    INVOKEINTERFACE io/quarkus/runtime/StartupTask#deploy
    RETURN
    ** label3
    GOTO label4
    ** label5
    ASTORE 1
    ALOAD 0
    // Method descriptor: ()V
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#close
    NEW java/lang/RuntimeException
    DUP
    LDC (String) "Failed to start quarkus"
    ALOAD 1
    // Method descriptor: (Ljava/lang/String;Ljava/lang/Throwable;)V
    INVOKESPECIAL java/lang/RuntimeException#<init>
    CHECKCAST java/lang/Throwable
    ATHROW
    ** label6
    GOTO label4
    // Try from label2 to label3
    // Catch java/lang/Throwable by going to label5
    ** label4
    ** label7
    
}

