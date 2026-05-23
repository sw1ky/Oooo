.class Lcom/volnaiot/app/controlActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "controlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/volnaiot/app/controlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/volnaiot/app/controlActivity;


# direct methods
.method constructor <init>(Lcom/volnaiot/app/controlActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/volnaiot/app/controlActivity$1;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$1;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-static {v0}, Lcom/volnaiot/app/controlActivity;->access$000(Lcom/volnaiot/app/controlActivity;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity$1;->this$0:Lcom/volnaiot/app/controlActivity;

    invoke-virtual {v0}, Lcom/volnaiot/app/controlActivity;->finish()V

    return-void
.end method
