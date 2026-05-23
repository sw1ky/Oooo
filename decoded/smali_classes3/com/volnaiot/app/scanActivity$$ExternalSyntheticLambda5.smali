.class public final synthetic Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/volnaiot/app/scanActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/volnaiot/app/scanActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda5;->f$0:Lcom/volnaiot/app/scanActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda5;->f$0:Lcom/volnaiot/app/scanActivity;

    invoke-virtual {v0}, Lcom/volnaiot/app/scanActivity;->lambda$scanLeDevice$5$com-timeylies-ninehack-scanActivity()V

    return-void
.end method
