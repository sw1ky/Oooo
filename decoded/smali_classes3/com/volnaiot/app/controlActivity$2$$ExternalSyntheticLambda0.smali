.class public final synthetic Lcom/volnaiot/app/controlActivity$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/volnaiot/app/controlActivity$2;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public synthetic constructor <init>(Lcom/volnaiot/app/controlActivity$2;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/volnaiot/app/controlActivity$2$$ExternalSyntheticLambda0;->f$0:Lcom/volnaiot/app/controlActivity$2;

    iput-object p2, p0, Lcom/volnaiot/app/controlActivity$2$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2$$ExternalSyntheticLambda0;->f$0:Lcom/volnaiot/app/controlActivity$2;

    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/controlActivity$2;->lambda$onConnectionStateChange$0$com-timeylies-ninehack-controlActivity$2(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
