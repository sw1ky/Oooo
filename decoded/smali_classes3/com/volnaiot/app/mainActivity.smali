.class public Lcom/volnaiot/app/mainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "mainActivity.java"


# instance fields
.field bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field settingsButton:Landroid/widget/ImageButton;

.field startButton:Landroid/widget/Button;

.field uartButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private checkPerms()Z
    .locals 3

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 60
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .local v0, "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 65
    .end local v0    # "permissions":[Ljava/lang/String;
    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.BLUETOOTH"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0    # "permissions":[Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Lcom/volnaiot/app/mainActivity;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/volnaiot/app/mainActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    .line 47
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 48
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 49
    .local v3, "permission":Ljava/lang/String;
    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    return v1

    .line 48
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 34
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 35
    .local v0, "systemBars":Landroidx/core/graphics/Insets;
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v4, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 36
    return-object p1
.end method

.method static synthetic lambda$startActivity$2(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 81
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private startActivity()V
    .locals 2

    .line 76
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/volnaiot/app/mainActivity;)V

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/mainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/volnaiot/app/mainActivity;->checkPerms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/volnaiot/app/scanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/volnaiot/app/mainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/volnaiot/app/permissionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/volnaiot/app/mainActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$1$com-timeylies-ninehack-mainActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 43
    invoke-direct {p0}, Lcom/volnaiot/app/mainActivity;->startActivity()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$com-volnaiot-app-mainActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/volnaiot/app/webViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/mainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreate$3$com-volnaiot-app-mainActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/volnaiot/app/settingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/mainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$startActivity$3$com-timeylies-ninehack-mainActivity()V
    .locals 4

    .line 78
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "dialog":Landroidx/appcompat/app/AlertDialog$Builder;
    const-string v1, "Bluetooth \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442\u0441\u044f"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/volnaiot/app/R$string;->main_dialog_bluetooth_not_supported:I

    .line 80
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 81
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/volnaiot/app/HwidGuard;->enforce(Landroid/app/Activity;)V

    .line 31
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 32
    sget v0, Lcom/volnaiot/app/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/mainActivity;->setContentView(I)V

    .line 33
    sget v0, Lcom/volnaiot/app/R$id;->main:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/mainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 40
    sget v0, Lcom/volnaiot/app/R$id;->StartButton:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/mainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/volnaiot/app/mainActivity;->startButton:Landroid/widget/Button;

    .line 41
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/mainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/volnaiot/app/mainActivity;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 42
    iget-object v0, p0, Lcom/volnaiot/app/mainActivity;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/volnaiot/app/mainActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 43
    iget-object v0, p0, Lcom/volnaiot/app/mainActivity;->startButton:Landroid/widget/Button;

    new-instance v1, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/volnaiot/app/mainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/volnaiot/app/mainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "UartButton"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/volnaiot/app/mainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/mainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/volnaiot/app/mainActivity;->uartButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/volnaiot/app/mainActivity;->uartButton:Landroid/widget/Button;

    new-instance v1, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/volnaiot/app/mainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/volnaiot/app/mainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "SettingsButton"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/volnaiot/app/mainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/mainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/volnaiot/app/mainActivity;->settingsButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/volnaiot/app/mainActivity;->settingsButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/mainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/volnaiot/app/mainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
