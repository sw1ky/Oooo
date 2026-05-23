.class Lcom/volnaiot/app/controlActivity$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "controlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/volnaiot/app/controlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/volnaiot/app/controlActivity;


# direct methods
.method constructor <init>(Lcom/volnaiot/app/controlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/volnaiot/app/controlActivity;

    .line 170
    iput-object p1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onConnectionStateChange$0$com-timeylies-ninehack-controlActivity$2(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .line 180
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    .line 181
    .local v0, "status2":Z
    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v2, "\u041f\u043e\u0438\u0441\u043a \u0441\u0435\u0440\u0432\u0438\u0441\u043e\u0432\u2026"

    invoke-virtual {v1, v2}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u043f\u043e\u0438\u0441\u043a \u0441\u0435\u0440\u0432\u0438\u0441\u043e\u0432"

    invoke-virtual {v1, v2}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void
.end method

.method synthetic lambda$onConnectionStateChange$1$com-timeylies-ninehack-controlActivity$2(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 201
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v0}, Lcom/volnaiot/app/controlActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onConnectionStateChange$2$com-timeylies-ninehack-controlActivity$2()V
    .locals 4

    .line 198
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, "dialog":Landroidx/appcompat/app/AlertDialog$Builder;
    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c\u0441\u044f"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/volnaiot/app/R$string;->control_dialog_could_not_connect:I

    .line 200
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/volnaiot/app/controlActivity$2$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/volnaiot/app/controlActivity$2$$ExternalSyntheticLambda2;-><init>(Lcom/volnaiot/app/controlActivity$2;)V

    .line 201
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 202
    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 266
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 267
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 268
    .local v0, "value":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Characteristic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/volnaiot/app/controlActivity;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCC"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lcom/volnaiot/app/controlActivity;->UART_TX_CHAR:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RX: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/volnaiot/app/controlActivity;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v1, v2}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v2, "\u041f\u043e\u043b\u0443\u0447\u0435\u043d\u043e \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0435, \u0440\u0430\u0437\u0431\u0438\u0440\u0430\u044e\u2026"

    invoke-virtual {v1, v2}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    iget-object v1, v1, Lcom/volnaiot/app/controlActivity;->commandCreator:Lcom/volnaiot/app/CommandCreator;

    invoke-virtual {v1, v0}, Lcom/volnaiot/app/CommandCreator;->interceptMessage([B)V

    .line 273
    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .line 259
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 260
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-static {v0}, Lcom/volnaiot/app/controlActivity;->access$000(Lcom/volnaiot/app/controlActivity;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sget-object v1, Lcom/volnaiot/app/controlActivity;->UART_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v1, Lcom/volnaiot/app/controlActivity;->UART_RX_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 261
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v1, "\u041a\u043e\u043c\u0430\u043d\u0434\u0430 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0430"

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .line 174
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 175
    if-nez p2, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v1, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u043e!"

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 179
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/volnaiot/app/controlActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/volnaiot/app/controlActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/volnaiot/app/controlActivity$2;Landroid/bluetooth/BluetoothGatt;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    .end local v0    # "handler":Landroid/os/Handler;
    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 188
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v1, "\u041e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/controlActivity;->controlTabs(Z)V

    goto :goto_0

    .line 190
    :cond_1
    if-eqz p2, :cond_3

    .line 191
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u044c\u0441\u044f"

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 193
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    iget v0, v0, Lcom/volnaiot/app/controlActivity;->connectCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 194
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v1, "\u041f\u0440\u043e\u0431\u0443\u044e \u0441\u043d\u043e\u0432\u0430\u2026"

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v1}, Lcom/volnaiot/app/controlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BLE_ADDRESS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/volnaiot/app/controlActivity;->access$100(Lcom/volnaiot/app/controlActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    new-instance v1, Lcom/volnaiot/app/controlActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/controlActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/volnaiot/app/controlActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/controlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    :cond_3
    :goto_0
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .line 234
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 235
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-static {v0}, Lcom/volnaiot/app/controlActivity;->access$000(Lcom/volnaiot/app/controlActivity;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 236
    .local v0, "status1":Z
    if-eqz v0, :cond_4

    .line 237
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v3, "\u041d\u0430\u0441\u0442\u0440\u0430\u0438\u0432\u0430\u044e \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u0434\u043b\u044f \u0445\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0438\u2026"

    invoke-virtual {v1, v3}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 238
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const-string v4, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u0443 \u0434\u0435\u0441\u043a\u0440\u0438\u043f\u0442\u043e\u0440\u0430"

    if-lt v1, v3, :cond_1

    .line 239
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-static {v1}, Lcom/volnaiot/app/controlActivity;->access$000(Lcom/volnaiot/app/controlActivity;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, p2, v3}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)I

    move-result v1

    .line 240
    .local v1, "status2":I
    if-eq v1, v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v2, v4}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 243
    .end local v1    # "status2":I
    :cond_0
    goto :goto_0

    .line 244
    :cond_1
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0434\u0430\u0442\u044c \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 \u0434\u0435\u0441\u043a\u0440\u0438\u043f\u0442\u043e\u0440\u0430"

    invoke-virtual {v1, v2}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-static {v1}, Lcom/volnaiot/app/controlActivity;->access$000(Lcom/volnaiot/app/controlActivity;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    .line 248
    .local v1, "status2":Z
    if-nez v1, :cond_3

    .line 249
    iget-object v2, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v2, v4}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 251
    .end local v1    # "status2":Z
    :cond_3
    goto :goto_0

    .line 253
    :cond_4
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0432\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u0434\u043b\u044f \u0445\u0430\u0440\u0430\u043a\u0442\u0435\u0440\u0438\u0441\u0442\u0438\u043a\u0438"

    invoke-virtual {v1, v2}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .line 224
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 225
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 226
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v1, "\u0423\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u044b"

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-static {v0}, Lcom/volnaiot/app/controlActivity;->access$300(Lcom/volnaiot/app/controlActivity;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 210
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 211
    if-nez p2, :cond_1

    .line 212
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    const-string v1, "\u0421\u0435\u0440\u0432\u0438\u0441\u044b \u043d\u0430\u0439\u0434\u0435\u043d\u044b!"

    invoke-virtual {v0, v1}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-static {v0}, Lcom/volnaiot/app/controlActivity;->access$000(Lcom/volnaiot/app/controlActivity;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 214
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/volnaiot/app/controlActivity;->UART_SERVICE:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/volnaiot/app/controlActivity$2;->this$0:Lcom/volnaiot/app/controlActivity;

    sget-object v3, Lcom/volnaiot/app/controlActivity;->UART_TX_CHAR:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/volnaiot/app/controlActivity;->access$200(Lcom/volnaiot/app/controlActivity;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 217
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_0
    goto :goto_0

    .line 219
    :cond_1
    return-void
.end method
