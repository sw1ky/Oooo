.class public Lcom/volnaiot/app/scanActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "scanActivity.java"


# static fields
.field public static final EXTRAS_BLE_ADDRESS:Ljava/lang/String; = "BLE_ADDRESS"

.field private static final SCAN_PERIOD:J = 0x2710L


# instance fields
.field bleArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field bluetoothDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final handler:Landroid/os/Handler;

.field private isScanning:Z

.field private final leScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private scanButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/volnaiot/app/scanActivity;->isScanning:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/volnaiot/app/scanActivity;->handler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/volnaiot/app/scanActivity$1;

    invoke-direct {v0, p0}, Lcom/volnaiot/app/scanActivity$1;-><init>(Lcom/volnaiot/app/scanActivity;)V

    iput-object v0, p0, Lcom/volnaiot/app/scanActivity;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-void
.end method

.method private checkAndStart()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/volnaiot/app/scanActivity;->checkPerms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-boolean v0, p0, Lcom/volnaiot/app/scanActivity;->isScanning:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/volnaiot/app/scanActivity;->scanLeDevice(Z)V

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/volnaiot/app/permissionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/volnaiot/app/scanActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method private checkPerms()Z
    .locals 3

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 176
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .local v0, "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v0    # "permissions":[Ljava/lang/String;
    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.BLUETOOTH"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 187
    .restart local v0    # "permissions":[Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Lcom/volnaiot/app/scanActivity;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 191
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 192
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 193
    .local v3, "permission":Ljava/lang/String;
    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    return v1

    .line 192
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 56
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 57
    .local v0, "systemBars":Landroidx/core/graphics/Insets;
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v4, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 58
    return-object p1
.end method

.method static synthetic lambda$scanLeDevice$3(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 106
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private scanLeDevice(Z)V
    .locals 6
    .param p1, "scanning"    # Z

    .line 98
    const-string v0, "Scan"

    if-eqz p1, :cond_1

    .line 100
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/volnaiot/app/scanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 101
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_0

    .line 102
    new-instance v0, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda4;-><init>(Lcom/volnaiot/app/scanActivity;)V

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/scanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    return-void

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/volnaiot/app/scanActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda5;-><init>(Lcom/volnaiot/app/scanActivity;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    iget-object v2, p0, Lcom/volnaiot/app/scanActivity;->bluetoothDeviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 120
    iget-object v2, p0, Lcom/volnaiot/app/scanActivity;->bleArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 121
    iget-object v2, p0, Lcom/volnaiot/app/scanActivity;->bleArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 122
    iget-object v2, p0, Lcom/volnaiot/app/scanActivity;->scanButton:Landroid/widget/Button;

    sget v3, Lcom/volnaiot/app/R$string;->scan_scanButtonText2:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 123
    iget-object v2, p0, Lcom/volnaiot/app/scanActivity;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v3, p0, Lcom/volnaiot/app/scanActivity;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 124
    const-string v2, "Scanning..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/volnaiot/app/scanActivity;->isScanning:Z

    .line 126
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->scanButton:Landroid/widget/Button;

    sget v2, Lcom/volnaiot/app/R$string;->scan_scanButtonText:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 128
    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcom/volnaiot/app/scanActivity;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 130
    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcom/volnaiot/app/scanActivity;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V

    .line 131
    const-string v1, "Stopped Scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/volnaiot/app/scanActivity;->isScanning:Z

    .line 134
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$1$com-timeylies-ninehack-scanActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 62
    invoke-direct {p0}, Lcom/volnaiot/app/scanActivity;->checkAndStart()V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-timeylies-ninehack-scanActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->bluetoothDeviceList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/volnaiot/app/controlActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/volnaiot/app/scanActivity;->bluetoothDeviceList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BLE_ADDRESS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-direct {p0, v1}, Lcom/volnaiot/app/scanActivity;->scanLeDevice(Z)V

    .line 72
    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 73
    invoke-virtual {p0, v0}, Lcom/volnaiot/app/scanActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/volnaiot/app/scanActivity;->finish()V

    .line 75
    return-void
.end method

.method synthetic lambda$scanLeDevice$4$com-timeylies-ninehack-scanActivity()V
    .locals 4

    .line 103
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "dialog":Landroidx/appcompat/app/AlertDialog$Builder;
    const-string v1, "Enable Location"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/volnaiot/app/R$string;->scan_dialog_enable_location:I

    .line 105
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 106
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 107
    return-void
.end method

.method synthetic lambda$scanLeDevice$5$com-timeylies-ninehack-scanActivity()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/volnaiot/app/scanActivity;->scanButton:Landroid/widget/Button;

    sget v1, Lcom/volnaiot/app/R$string;->scan_scanButtonText:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/volnaiot/app/scanActivity;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 114
    iget-object v0, p0, Lcom/volnaiot/app/scanActivity;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->leScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V

    .line 115
    const-string v0, "Scan"

    const-string v1, "Stopped Scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/volnaiot/app/scanActivity;->isScanning:Z

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 54
    sget v0, Lcom/volnaiot/app/R$layout;->activity_scan:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/scanActivity;->setContentView(I)V

    .line 55
    sget v0, Lcom/volnaiot/app/R$id;->main:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/scanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 61
    sget v0, Lcom/volnaiot/app/R$id;->scan_button:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/scanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/volnaiot/app/scanActivity;->scanButton:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/volnaiot/app/scanActivity;->scanButton:Landroid/widget/Button;

    new-instance v1, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda2;-><init>(Lcom/volnaiot/app/scanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcom/volnaiot/app/R$id;->device_list:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/scanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 65
    .local v0, "scanList":Landroid/widget/ListView;
    new-instance v1, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/scanActivity$$ExternalSyntheticLambda3;-><init>(Lcom/volnaiot/app/scanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lcom/volnaiot/app/scanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    iput-object v1, p0, Lcom/volnaiot/app/scanActivity;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 78
    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/volnaiot/app/scanActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 79
    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    iput-object v1, p0, Lcom/volnaiot/app/scanActivity;->bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/volnaiot/app/scanActivity;->bluetoothDeviceList:Ljava/util/List;

    .line 82
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0b0070

    invoke-direct {v1, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/volnaiot/app/scanActivity;->bleArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 83
    iget-object v1, p0, Lcom/volnaiot/app/scanActivity;->bleArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/volnaiot/app/scanActivity;->scanLeDevice(Z)V

    .line 164
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 169
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/volnaiot/app/scanActivity;->scanLeDevice(Z)V

    .line 171
    iget-object v0, p0, Lcom/volnaiot/app/scanActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 172
    return-void
.end method
