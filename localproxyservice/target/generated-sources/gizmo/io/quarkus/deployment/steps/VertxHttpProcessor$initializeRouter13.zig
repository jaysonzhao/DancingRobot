// Class: io/quarkus/deployment/steps/VertxHttpProcessor$initializeRouter13
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
    // Field descriptor: Lio/quarkus/runtime/generated/RunTimeConfigRoot;
    GETSTATIC io/quarkus/runtime/generated/RunTimeConfig#runConfig
    // Field descriptor: Ljava/lang/Object;
    GETFIELD io/quarkus/runtime/generated/RunTimeConfigRoot#http
    ASTORE 3
    ALOAD 2
    LDC (Integer) 1
    ALOAD 3
    AASTORE
    NEW io/quarkus/vertx/http/runtime/VertxHttpRecorder
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/vertx/http/runtime/VertxHttpRecorder#<init>
    ASTORE 4
    ALOAD 2
    LDC (Integer) 0
    ALOAD 4
    AASTORE
    ALOAD 1
    LDC (String) "proxykey23"
    // Method descriptor: (Ljava/lang/String;)Ljava/lang/Object;
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#getValue
    ASTORE 7
    ALOAD 1
    LDC (String) "io.quarkus.runtime.ShutdownContext"
    // Method descriptor: (Ljava/lang/String;)Ljava/lang/Object;
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#getValue
    ASTORE 10
    ALOAD 2
    LDC (Integer) 1
    AALOAD
    ASTORE 8
    LDC (String) "NORMAL"
    // Method descriptor: (Ljava/lang/String;)Lio/quarkus/runtime/LaunchMode;
    INVOKESTATIC io/quarkus/runtime/LaunchMode#valueOf
    ASTORE 11
    LDC (Boolean) false
    // Method descriptor: (Z)Ljava/lang/Boolean;
    INVOKESTATIC java/lang/Boolean#valueOf
    ASTORE 9
    LDC (Boolean) true
    // Method descriptor: (Z)Ljava/lang/Boolean;
    INVOKESTATIC java/lang/Boolean#valueOf
    ASTORE 5
    ALOAD 1
    LDC (String) "proxykey18"
    // Method descriptor: (Ljava/lang/String;)Ljava/lang/Object;
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#getValue
    ASTORE 6
    ALOAD 2
    LDC (Integer) 0
    AALOAD
    CHECKCAST io/quarkus/vertx/http/runtime/VertxHttpRecorder
    ALOAD 7
    CHECKCAST io/quarkus/runtime/RuntimeValue
    ALOAD 10
    CHECKCAST io/quarkus/runtime/ShutdownContext
    ALOAD 8
    CHECKCAST io/quarkus/vertx/http/runtime/HttpConfiguration
    ALOAD 11
    ALOAD 9
    CHECKCAST java/lang/Boolean
    // Method descriptor: ()Z
    INVOKEVIRTUAL java/lang/Boolean#booleanValue
    ALOAD 5
    CHECKCAST java/lang/Boolean
    // Method descriptor: ()Z
    INVOKEVIRTUAL java/lang/Boolean#booleanValue
    ALOAD 6
    CHECKCAST java/util/function/Supplier
    // Method descriptor: (Lio/quarkus/runtime/RuntimeValue;Lio/quarkus/runtime/ShutdownContext;Lio/quarkus/vertx/http/runtime/HttpConfiguration;Lio/quarkus/runtime/LaunchMode;ZZLjava/util/function/Supplier;)Lio/quarkus/runtime/RuntimeValue;
    INVOKEVIRTUAL io/quarkus/vertx/http/runtime/VertxHttpRecorder#initializeRouter
    ASTORE 12
    ALOAD 1
    LDC (String) "proxykey33"
    ALOAD 12
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
    LDC (Integer) 2
    ANEWARRAY java/lang/Object
    ASTORE 2
    ALOAD 0
    ALOAD 1
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;[Ljava/lang/Object;)V
    INVOKEVIRTUAL io/quarkus/deployment/steps/VertxHttpProcessor$initializeRouter13#deploy_0
    RETURN
    ** label2
    
}

