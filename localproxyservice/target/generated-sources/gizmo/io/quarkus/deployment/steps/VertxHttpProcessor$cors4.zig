// Class: io/quarkus/deployment/steps/VertxHttpProcessor$cors4
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
Method deploy : V
(
    arg 1 = Lio/quarkus/runtime/StartupContext;
) {
    ** label1
    LDC (Integer) 2
    ANEWARRAY java/lang/Object
    ASTORE 2
    ALOAD 0
    ALOAD 1
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;[Ljava/lang/Object;)V
    INVOKEVIRTUAL io/quarkus/deployment/steps/VertxHttpProcessor$cors4#deploy_0
    RETURN
    ** label2
    
}

// Access: public
Method deploy_0 : V
(
    arg 1 = Lio/quarkus/runtime/StartupContext;,
    arg 2 = [Ljava/lang/Object;
) {
    ** label1
    // Field descriptor: Lio/quarkus/runtime/generated/RunTimeConfigRoot;
    GETSTATIC io/quarkus/runtime/generated/RunTimeConfig#runConfig
    // Field descriptor: Ljava/lang/Object;
    GETFIELD io/quarkus/runtime/generated/RunTimeConfigRoot#http
    ASTORE 3
    ALOAD 2
    LDC (Integer) 1
    ALOAD 3
    AASTORE
    NEW io/quarkus/vertx/http/runtime/cors/CORSRecorder
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/vertx/http/runtime/cors/CORSRecorder#<init>
    ASTORE 4
    ALOAD 2
    LDC (Integer) 0
    ALOAD 4
    AASTORE
    ALOAD 2
    LDC (Integer) 1
    AALOAD
    ASTORE 5
    ALOAD 2
    LDC (Integer) 0
    AALOAD
    CHECKCAST io/quarkus/vertx/http/runtime/cors/CORSRecorder
    ALOAD 5
    CHECKCAST io/quarkus/vertx/http/runtime/HttpConfiguration
    // Method descriptor: (Lio/quarkus/vertx/http/runtime/HttpConfiguration;)Lio/vertx/core/Handler;
    INVOKEVIRTUAL io/quarkus/vertx/http/runtime/cors/CORSRecorder#corsHandler
    ASTORE 6
    ALOAD 1
    LDC (String) "proxykey14"
    ALOAD 6
    // Method descriptor: (Ljava/lang/String;Ljava/lang/Object;)V
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#putValue
    RETURN
    ** label2
    
}

