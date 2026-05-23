.class public final synthetic Lcom/volnaiot/app/scanActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/volnaiot/app/scanActivity$1;

.field public final synthetic f$1:Landroid/bluetooth/le/ScanResult;


# direct methods
.method public synthetic constructor <init>(Lcom/volnaiot/app/scanActivity$1;Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/volnaiot/app/scanActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/volnaiot/app/scanActivity$1;

    iput-object p2, p0, Lcom/volnaiot/app/scanActivity$1$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/le/ScanResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/volnaiot/app/scanActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/volnaiot/app/scanActivity$1;

    iget-object v1, p0, Lcom/volnaiot/app/scanActivity$1$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/scanActivity$1;->lambda$onScanResult$0$com-timeylies-ninehack-scanActivity$1(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method
