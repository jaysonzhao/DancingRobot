// Class: io/quarkus/deployment/steps/BlockingOperationControlBuildStep$blockingOP11
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
    ALOAD 1
    LDC (String) "proxykey18"
    // Method descriptor: (Ljava/lang/String;)Ljava/lang/Object;
    INVOKEVIRTUAL io/quarkus/runtime/StartupContext#getValue
    ASTORE 5
    ALOAD 4
    CHECKCAST java/util/Collection
    ALOAD 5
    // Method descriptor: (Ljava/lang/Object;)Z
    INVOKEINTERFACE java/util/Collection#add
    POP
    ALOAD 2
    LDC (Integer) 2
    ALOAD 4
    AASTORE
    NEW io/quarkus/runtime/BlockingOperationRecorder
    DUP
    // Method descriptor: ()V
    INVOKESPECIAL io/quarkus/runtime/BlockingOperationRecorder#<init>
    ASTORE 6
    ALOAD 2
    LDC (Integer) 0
    ALOAD 6
    AASTORE
    ALOAD 2
    LDC (Integer) 2
    AALOAD
    ASTORE 7
    ALOAD 2
    LDC (Integer) 0
    AALOAD
    CHECKCAST io/quarkus/runtime/BlockingOperationRecorder
    ALOAD 7
    CHECKCAST java/util/List
    // Method descriptor: (Ljava/util/List;)V
    INVOKEVIRTUAL io/quarkus/runtime/BlockingOperationRecorder#control
    RETURN
    ** label2
    
}

// Access: public
Method deploy : V
(
    arg 1 = Lio/quarkus/runtime/StartupContext;
) {
    ** label1
    LDC (Integer) 3
    ANEWARRAY java/lang/Object
    ASTORE 2
    ALOAD 0
    ALOAD 1
    ALOAD 2
    // Method descriptor: (Lio/quarkus/runtime/StartupContext;[Ljava/lang/Object;)V
    INVOKEVIRTUAL io/quarkus/deployment/steps/BlockingOperationControlBuildStep$blockingOP11#deploy_0
    RETURN
    ** label2
    
}

