.class Lcom/volnaiot/app/HwidGuard$Worker;
.super Ljava/lang/Thread;
.source "HwidGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/volnaiot/app/HwidGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Worker"
.end annotation


# instance fields
.field final act:Landroid/app/Activity;

.field final hwid:Ljava/lang/String;

.field final pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/volnaiot/app/HwidGuard$Worker;->act:Landroid/app/Activity;

    iput-object p2, p0, Lcom/volnaiot/app/HwidGuard$Worker;->hwid:Ljava/lang/String;

    iput-object p3, p0, Lcom/volnaiot/app/HwidGuard$Worker;->pd:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/volnaiot/app/HwidGuard;->fetch()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/volnaiot/app/HwidGuard$Worker;->act:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lcom/volnaiot/app/HwidGuard;->saveCache(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/volnaiot/app/HwidGuard;->loadCache(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/volnaiot/app/HwidGuard$Worker;->hwid:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/volnaiot/app/HwidGuard;->isInList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v4, Lcom/volnaiot/app/HwidGuard$Worker$1;

    iget-object v5, p0, Lcom/volnaiot/app/HwidGuard$Worker;->pd:Landroid/app/ProgressDialog;

    invoke-direct {v4, v5}, Lcom/volnaiot/app/HwidGuard$Worker$1;-><init>(Landroid/app/ProgressDialog;)V

    iget-object v5, p0, Lcom/volnaiot/app/HwidGuard$Worker;->act:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    const-string v4, "\u041d\u0435\u0442 \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0430 \u0438 \u043d\u0435\u0442 \u043a\u044d\u0448\u0430. \u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u0435\u0441\u044c \u043a \u0441\u0435\u0442\u0438 \u0438 \u043f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0441\u043d\u043e\u0432\u0430."

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    const-string v4, "\u042d\u0442\u043e\u0433\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430 \u043d\u0435\u0442 \u0432 \u0441\u043f\u0438\u0441\u043a\u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0451\u043d\u043d\u044b\u0445.\n\u041f\u043e \u043f\u043e\u043a\u0443\u043f\u043a\u0435 \u043f\u0438\u0441\u0430\u0442\u044c: @VolnaIOT"

    goto :goto_1

    :cond_3
    const-string v4, "\u041d\u0435\u0442 \u0441\u0435\u0442\u0438. \u041f\u043e \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0435\u043c\u0443 \u043a\u044d\u0448\u0443 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u043d\u0435 \u0432 \u0431\u0435\u043b\u043e\u043c \u0441\u043f\u0438\u0441\u043a\u0435."

    :goto_1
    new-instance v5, Lcom/volnaiot/app/HwidGuard$Worker$2;

    invoke-direct {v5, p0, v4}, Lcom/volnaiot/app/HwidGuard$Worker$2;-><init>(Lcom/volnaiot/app/HwidGuard$Worker;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/volnaiot/app/HwidGuard$Worker;->act:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
