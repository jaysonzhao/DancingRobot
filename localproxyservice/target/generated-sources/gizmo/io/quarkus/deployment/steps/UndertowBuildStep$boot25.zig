// Class: io/quarkus/deployment/steps/UndertowBuildStep$boot25
//     Access =  public synthetic
//     Extends: java/lang/Object
//     Implements:
//         io/quarkus/runtime/StartupTask

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
    INVOKESPECIAL java/lang/Object#<init>
    RETURN
    
}

// Access: public
Method deploy_0 : V
(
    arg 1 = Lio/quarkus/runtime/StartupContext;,
    arg 2 = [Ljava/lang/Object;
) {
    ** label1
    NEW java/util/ArrayList
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL java/util/ArrayList#<init>
    ASTORE 3
    ALOAD 2
    LDC (Integer) 1
    ALOAD 3
    AASTORE
    ALOAD 2
    LDC (Integer) 1
    AALOAD
    ASTORE 4
    ALOAD 2
    LDC (Integer) 2
    ALOAD 4
    AASTORE
    // Field descriptor: Lio/quarkus/runtime/generated/RunTimeConfigRoot;
    GETSTATIC io/quarkus/runtime/generated/RunTimeConfig#runConfig
    // Field descriptor: Ljava/lang/Object;
    GETFIELD io/quarkus/runtime/generated/RunTimeConfigRoot#http
    ASTORE 5
    ALOAD 2
    LDC (Integer) 3
    ALOAD 5
    AASTORE
    // Field descriptor: Lio/quarkus/runtime/generated/RunTimeConfigRoot;
    GETSTATIC io/quarkus/runtime/generated/RunTimeConfig#runConfig
    // Field descriptor: Ljava/lang/Object;
    GETFIELD io/quarkus/runtime/generated/RunTimeConfigRoot#servletRuntime
    ASTORE 6
    ALOAD 2
    LDC (Integer) 4
    ALOAD 6
    AASTORE
    NEW io/quarkus/undertow/runtime/UndertowDeploymentRecorder
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/undertow/runtime/UndertowDeploymentRecorder#<init>
    ASTORE 7
    ALOAD 2
    LDC (Integer) 0
    ALOAD 7
    AASTORE
    ALOAD 1
    LDC (String) "io.quarkus.runtime.ShutdownContext"
    // Method descriptor: (Ljava/lang/String;)Ljava/lang/Object;
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#getValue
    ASTORE 8
    ALOAD 1
    LDC (String) "proxykey20"
    // Method descriptor: (Ljava/lang/String;)Ljava/lang/Object;
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#getValue
    ASTORE 10
    ALOAD 1
    LDC (String) "proxykey56"
    // Method descriptor: (Ljava/lang/String;)Ljava/lang/Object;
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#getValue
    ASTORE 13
    ALOAD 2
    LDC (Integer) 2
    AALOAD
    ASTORE 12
    ALOAD 2
    LDC (Integer) 3
    AALOAD
    ASTORE 11
    ALOAD 2
    LDC (Integer) 4
    AALOAD
    ASTORE 9
    ALOAD 2
    LDC (Integer) 0
    AALOAD
    CHECKCAST io/quarkus/undertow/runtime/UndertowDeploymentRecorder
    ALOAD 8
    CHECKCAST io/quarkus/runtime/ShutdownContext
    ALOAD 10
    CHECKCAST java/util/concurrent/ExecutorService
    ALOAD 13
    CHECKCAST io/undertow/servlet/api/DeploymentManager
    ALOAD 12
    CHECKCAST java/util/List
    ALOAD 11
    CHECKCAST io/quarkus/vertx/http/runtime/HttpConfiguration
    ALOAD 9
    CHECKCAST io/quarkus/undertow/runtime/ServletRuntimeConfig
    // Method descriptor: (Lio/quarkus/runtime/ShutdownContext;Ljava/util/concurrent/ExecutorService;Lio/undertow/servlet/api/DeploymentManager;Ljava/util/List;Lio/quarkus/vertx/http/runtime/HttpConfiguration;Lio/quarkus/undertow/runtime/ServletRuntimeConfig;)Lio/vertx/core/Handler;
    INVOKEVIRTUAL io/quarkus/undertow/runtime/UndertowDeploymentRecorder#startUndertow
    ASTORE 14
    ALOAD 1
    LDC (String) "proxykey59"
    ALOAD 14
    // Method descriptor: (Ljava/lang/String;Ljava/lang/Object;)V
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#putValue
    RETURN
    ** label2
    
}

// Access: public
Method deploy : V
(
    arg 1 = Lio/quarkus/runtime/StartupContext;
) {
    ** label1
    LDC (Integer) 5
    ANEWARRAY java/lang/Object
    ASTORE 2
    ALOAD 0
    ALOAD 1
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;[Ljava/lang/Object;)V
    INVOKEVIRTUAL io/quarkus/deployment/steps/UndertowBuildStep$boot25#deploy_0
    RETURN
    ** label2
    
}

