.class public Lcom/volnaiot/app/controlActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "controlActivity.java"


# static fields
.field public static final EXTRAS_BLE_ADDRESS:Ljava/lang/String; = "BLE_ADDRESS"

.field public static final UART_RX_CHAR:Ljava/util/UUID;

.field public static final UART_SERVICE:Ljava/util/UUID;

.field public static final UART_TX_CHAR:Ljava/util/UUID;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field commandCreator:Lcom/volnaiot/app/CommandCreator;

.field connectCount:I

.field private final gattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field public logText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-string v0, "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/volnaiot/app/controlActivity;->UART_SERVICE:Ljava/util/UUID;

    .line 49
    const-string v0, "6e400003-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/volnaiot/app/controlActivity;->UART_TX_CHAR:Ljava/util/UUID;

    .line 50
    const-string v0, "6e400002-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/volnaiot/app/controlActivity;->UART_RX_CHAR:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/volnaiot/app/CommandCreator;

    invoke-direct {v0}, Lcom/volnaiot/app/CommandCreator;-><init>()V

    iput-object v0, p0, Lcom/volnaiot/app/controlActivity;->commandCreator:Lcom/volnaiot/app/CommandCreator;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/volnaiot/app/controlActivity;->connectCount:I

    .line 170
    new-instance v0, Lcom/volnaiot/app/controlActivity$2;

    invoke-direct {v0, p0}, Lcom/volnaiot/app/controlActivity$2;-><init>(Lcom/volnaiot/app/controlActivity;)V

    iput-object v0, p0, Lcom/volnaiot/app/controlActivity;->gattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/volnaiot/app/controlActivity;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/volnaiot/app/controlActivity;

    .line 42
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$100(Lcom/volnaiot/app/controlActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/volnaiot/app/controlActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/volnaiot/app/controlActivity;->connect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/volnaiot/app/controlActivity;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p0, "x0"    # Lcom/volnaiot/app/controlActivity;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 42
    invoke-direct {p0, p1}, Lcom/volnaiot/app/controlActivity;->enableNotifications(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method static synthetic access$300(Lcom/volnaiot/app/controlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/volnaiot/app/controlActivity;

    .line 42
    invoke-direct {p0}, Lcom/volnaiot/app/controlActivity;->writeFirstStage()V

    return-void
.end method

.method private checkPerms()Z
    .locals 3

    .line 386
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 387
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .local v0, "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 392
    .end local v0    # "permissions":[Ljava/lang/String;
    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.BLUETOOTH"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 398
    .restart local v0    # "permissions":[Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Lcom/volnaiot/app/controlActivity;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/volnaiot/app/controlActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

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

.method private connect(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 \u043a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 165
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity;->gattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/volnaiot/app/controlActivity;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 166
    iget v1, p0, Lcom/volnaiot/app/controlActivity;->connectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/volnaiot/app/controlActivity;->connectCount:I

    .line 167
    return-void
.end method

.method private enableNotifications(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "characteristicData"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 278
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0430\u044e \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f\u2026"

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 279
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 280
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u0434\u0435\u0441\u043a\u0440\u0438\u043f\u0442\u043e\u0440."

    invoke-virtual {p0, v1}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 283
    :cond_0
    return-void
.end method

.method private static varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 374
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 375
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 376
    .local v3, "permission":Ljava/lang/String;
    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    return v1

    .line 375
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private init()V
    .locals 6

    .line 301
    sget v0, Lcom/volnaiot/app/R$id;->viewPager2:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/controlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 302
    .local v0, "viewPager":Landroidx/viewpager2/widget/ViewPager2;
    sget v1, Lcom/volnaiot/app/R$id;->tabs:I

    invoke-virtual {p0, v1}, Lcom/volnaiot/app/controlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 303
    .local v1, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    sget v2, Lcom/volnaiot/app/R$id;->scrollView:I

    invoke-virtual {p0, v2}, Lcom/volnaiot/app/controlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 304
    .local v2, "scrollview":Landroid/widget/ScrollView;
    sget v3, Lcom/volnaiot/app/R$id;->logTextView:I

    invoke-virtual {p0, v3}, Lcom/volnaiot/app/controlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/volnaiot/app/controlActivity;->logText:Landroid/widget/TextView;

    .line 305
    const-string v3, "bluetooth"

    invoke-virtual {p0, v3}, Lcom/volnaiot/app/controlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothManager;

    .line 306
    .local v3, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/volnaiot/app/controlActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 308
    iget-object v4, p0, Lcom/volnaiot/app/controlActivity;->logText:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    new-instance v4, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda2;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 313
    new-instance v4, Lcom/volnaiot/app/TabPagerAdapter;

    invoke-direct {v4, p0}, Lcom/volnaiot/app/TabPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 315
    new-instance v4, Lcom/google/android/material/tabs/TabLayoutMediator;

    new-instance v5, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda3;-><init>(Lcom/volnaiot/app/controlActivity;)V

    invoke-direct {v4, v1, v0, v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 317
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 319
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/volnaiot/app/controlActivity;->controlTabs(Z)V

    .line 321
    iget-object v4, p0, Lcom/volnaiot/app/controlActivity;->commandCreator:Lcom/volnaiot/app/CommandCreator;

    invoke-virtual {v4, p0}, Lcom/volnaiot/app/CommandCreator;->init(Lcom/volnaiot/app/controlActivity;)V

    .line 322
    return-void
.end method

.method static synthetic lambda$init$2(Landroid/widget/ScrollView;)V
    .locals 1
    .param p0, "scrollview"    # Landroid/widget/ScrollView;

    .line 311
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 60
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 61
    .local v0, "systemBars":Landroidx/core/graphics/Insets;
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v4, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    return-object p1
.end method

.method private start()V
    .locals 2

    .line 156
    const-string v0, "\u0417\u0430\u043f\u0443\u0449\u0435\u043d\u043e"

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/volnaiot/app/controlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BLE_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/volnaiot/app/controlActivity;->connect(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private tabNames(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .line 339
    packed-switch p1, :pswitch_data_0

    .line 347
    const/4 v0, 0x0

    return-object v0

    .line 345
    :pswitch_0
    invoke-virtual {p0}, Lcom/volnaiot/app/controlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/volnaiot/app/R$string;->control_tab3Text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 343
    :pswitch_1
    invoke-virtual {p0}, Lcom/volnaiot/app/controlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/volnaiot/app/R$string;->control_tab2Text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :pswitch_2
    invoke-virtual {p0}, Lcom/volnaiot/app/controlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/volnaiot/app/R$string;->control_tab1Text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .line 352
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 353
    .local v0, "bi":Ljava/math/BigInteger;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    shl-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private writeCommand([B)V
    .locals 3
    .param p1, "command"    # [B

    .line 325
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v1, Lcom/volnaiot/app/controlActivity;->UART_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v1, Lcom/volnaiot/app/controlActivity;->UART_RX_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 326
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TX: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/volnaiot/app/controlActivity;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 327
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 328
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    .line 329
    .local v1, "status":Z
    if-eqz v1, :cond_0

    .line 330
    const-string v2, "\u041e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u044e \u043a\u043e\u043c\u0430\u043d\u0434\u0443\u2026"

    invoke-virtual {p0, v2}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_0
    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u043a\u043e\u043c\u0430\u043d\u0434\u0443!"

    invoke-virtual {p0, v2}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void
.end method

.method private writeFirstStage()V
    .locals 3

    .line 287
    const-string v0, "\u041f\u044b\u0442\u0430\u044e\u0441\u044c \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u043a\u043e\u043c\u0430\u043d\u0434\u0443 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438\u2026"

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v1, Lcom/volnaiot/app/controlActivity;->UART_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    sget-object v1, Lcom/volnaiot/app/controlActivity;->UART_RX_CHAR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 289
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity;->commandCreator:Lcom/volnaiot/app/CommandCreator;

    sget v2, Lcom/volnaiot/app/R$string;->control_defaultBleKey:I

    invoke-virtual {p0, v2}, Lcom/volnaiot/app/controlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/volnaiot/app/CommandCreator;->getKeyCommand(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 290
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 291
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    .line 292
    .local v1, "status":Z
    if-eqz v1, :cond_0

    .line 293
    const-string v2, "\u041e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u044e \u043a\u043e\u043c\u0430\u043d\u0434\u0443\u2026"

    invoke-virtual {p0, v2}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u043a\u043e\u043c\u0430\u043d\u0434\u0443!"

    invoke-virtual {p0, v2}, Lcom/volnaiot/app/controlActivity;->addLogText(Ljava/lang/String;)V

    .line 297
    :goto_0
    return-void
.end method


# virtual methods
.method public addLogText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 357
    if-eqz p1, :cond_0

    .line 358
    new-instance v0, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda4;-><init>(Lcom/volnaiot/app/controlActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/controlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 363
    :cond_0
    return-void
.end method

.method controlTabs(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 367
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    invoke-virtual {p0}, Lcom/volnaiot/app/controlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "tab1rx"

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 369
    return-void
.end method

.method synthetic lambda$addLogText$4$com-timeylies-ninehack-controlActivity(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity;->logText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/volnaiot/app/controlActivity;->logText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 361
    return-void
.end method

.method synthetic lambda$init$3$com-timeylies-ninehack-controlActivity(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "position"    # I

    .line 316
    invoke-direct {p0, p2}, Lcom/volnaiot/app/controlActivity;->tabNames(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method synthetic lambda$onCreate$1$com-timeylies-ninehack-controlActivity(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "requestKey"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 65
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 66
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 67
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const-string v2, "FragData"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 81
    :pswitch_0
    const-string v1, "Got Send to scooter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "mode":B
    const/4 v3, 0x1

    aget-byte v3, v0, v3

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 93
    :pswitch_1
    const-string v3, "Mode 3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x3

    goto :goto_0

    .line 89
    :pswitch_2
    const-string v3, "Mode 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x2

    .line 91
    goto :goto_0

    .line 85
    :pswitch_3
    const-string v3, "Mode 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x1

    .line 87
    nop

    .line 101
    :goto_0
    const/4 v3, 0x0

    .line 102
    .local v3, "headlight":B
    const/4 v4, 0x0

    .line 103
    .local v4, "throttle":B
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    packed-switch v5, :pswitch_data_2

    goto :goto_1

    .line 118
    :pswitch_4
    const-string v5, "Headlight and Throttle On"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v3, 0x2

    .line 120
    const/4 v4, 0x2

    goto :goto_1

    .line 114
    :pswitch_5
    const-string v5, "Throttle On"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 116
    goto :goto_1

    .line 110
    :pswitch_6
    const-string v5, "Headlight On"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 112
    goto :goto_1

    .line 105
    :pswitch_7
    const-string v5, "No Switches"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v3, 0x1

    .line 107
    const/4 v4, 0x1

    .line 108
    nop

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/volnaiot/app/controlActivity;->commandCreator:Lcom/volnaiot/app/CommandCreator;

    invoke-virtual {v2, v3, v1, v4}, Lcom/volnaiot/app/CommandCreator;->getSetScooterCommand(BBB)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/volnaiot/app/controlActivity;->writeCommand([B)V

    goto :goto_2

    .line 77
    .end local v1    # "mode":B
    .end local v3    # "headlight":B
    .end local v4    # "throttle":B
    :pswitch_8
    const-string v1, "Got Eject Battery"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity;->commandCreator:Lcom/volnaiot/app/CommandCreator;

    invoke-virtual {v1}, Lcom/volnaiot/app/CommandCreator;->getEjectBatteryCommand()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/volnaiot/app/controlActivity;->writeCommand([B)V

    .line 79
    goto :goto_2

    .line 73
    :pswitch_9
    const-string v1, "Got Lock"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity;->commandCreator:Lcom/volnaiot/app/CommandCreator;

    invoke-virtual {v1}, Lcom/volnaiot/app/CommandCreator;->getLockCommand()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/volnaiot/app/controlActivity;->writeCommand([B)V

    .line 75
    goto :goto_2

    .line 69
    :pswitch_a
    const-string v1, "Got Unlock"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/volnaiot/app/controlActivity;->commandCreator:Lcom/volnaiot/app/CommandCreator;

    invoke-virtual {v1}, Lcom/volnaiot/app/CommandCreator;->getUnlockCommand()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/volnaiot/app/controlActivity;->writeCommand([B)V

    .line 71
    nop

    .line 128
    :cond_0
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 58
    sget v0, Lcom/volnaiot/app/R$layout;->activity_control:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/controlActivity;->setContentView(I)V

    .line 59
    sget v0, Lcom/volnaiot/app/R$id;->main:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/controlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/volnaiot/app/controlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/controlActivity$$ExternalSyntheticLambda1;-><init>(Lcom/volnaiot/app/controlActivity;)V

    const-string v2, "tab1tx"

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 130
    invoke-direct {p0}, Lcom/volnaiot/app/controlActivity;->init()V

    .line 131
    invoke-direct {p0}, Lcom/volnaiot/app/controlActivity;->checkPerms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/volnaiot/app/controlActivity;->start()V

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/volnaiot/app/permissionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/volnaiot/app/controlActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/volnaiot/app/controlActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/volnaiot/app/controlActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/volnaiot/app/controlActivity$1;-><init>(Lcom/volnaiot/app/controlActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 150
    return-void
.end method
