.class Lcom/volnaiot/app/HwidGuard$Worker$2;
.super Ljava/lang/Object;
.source "HwidGuard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/volnaiot/app/HwidGuard$Worker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/volnaiot/app/HwidGuard$Worker;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/volnaiot/app/HwidGuard$Worker;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/volnaiot/app/HwidGuard$Worker$2;->this$0:Lcom/volnaiot/app/HwidGuard$Worker;

    iput-object p2, p0, Lcom/volnaiot/app/HwidGuard$Worker$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/volnaiot/app/HwidGuard$Worker$2;->this$0:Lcom/volnaiot/app/HwidGuard$Worker;

    iget-object v0, v0, Lcom/volnaiot/app/HwidGuard$Worker;->pd:Landroid/app/ProgressDialog;

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Lcom/volnaiot/app/HwidGuard$Worker$2;->this$0:Lcom/volnaiot/app/HwidGuard$Worker;

    iget-object v1, v0, Lcom/volnaiot/app/HwidGuard$Worker;->act:Landroid/app/Activity;

    iget-object v2, v0, Lcom/volnaiot/app/HwidGuard$Worker;->hwid:Ljava/lang/String;

    iget-object v3, p0, Lcom/volnaiot/app/HwidGuard$Worker$2;->val$reason:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/volnaiot/app/HwidGuard;->showBlock(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
