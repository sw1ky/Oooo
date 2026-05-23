.class Lcom/volnaiot/app/scanActivity$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "scanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/volnaiot/app/scanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/volnaiot/app/scanActivity;


# direct methods
.method constructor <init>(Lcom/volnaiot/app/scanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/volnaiot/app/scanActivity;

    .line 139
    iput-object p1, p0, Lcom/volnaiot/app/scanActivity$1;->this$0:Lcom/volnaiot/app/scanActivity;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onScanResult$0$com-timeylies-ninehack-scanActivity$1(Landroid/bluetooth/le/ScanResult;)V
    .locals 4
    .param p1, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 144
    iget-object v0, p0, Lcom/volnaiot/app/scanActivity$1;->this$0:Lcom/volnaiot/app/scanActivity;

    iget-object v0, v0, Lcom/volnaiot/app/scanActivity;->bluetoothDeviceList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/volnaiot/app/scanActivity$1;->this$0:Lcom/volnaiot/app/scanActivity;

    iget-object v0, v0, Lcom/volnaiot/app/scanActivity;->bluetoothDeviceList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "No Name"

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 152
    .restart local v0    # "name":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/volnaiot/app/scanActivity$1;->this$0:Lcom/volnaiot/app/scanActivity;

    iget-object v1, v1, Lcom/volnaiot/app/scanActivity;->bleArrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 153
    iget-object v1, p0, Lcom/volnaiot/app/scanActivity$1;->this$0:Lcom/volnaiot/app/scanActivity;

    iget-object v1, v1, Lcom/volnaiot/app/scanActivity;->bleArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 155
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 142
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 143
    iget-object v0, p0, Lcom/volnaiot/app/scanActivity$1;->this$0:Lcom/volnaiot/app/scanActivity;

    new-instance v1, Lcom/volnaiot/app/scanActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/volnaiot/app/scanActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/volnaiot/app/scanActivity$1;Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/scanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method
