.class public final synthetic Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/volnaiot/app/controlActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/volnaiot/app/controlActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda4;->f$0:Lcom/volnaiot/app/controlActivity;

    iput-object p2, p0, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda4;->f$0:Lcom/volnaiot/app/controlActivity;

    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/controlActivity;->lambda$addLogText$4$com-timeylies-ninehack-controlActivity(Ljava/lang/String;)V

    return-void
.end method
