.class public Lcom/volnaiot/app/permissionsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "permissionsActivity.java"


# instance fields
.field activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private checkBox1:Landroid/widget/CheckBox;

.field private checkBox2:Landroid/widget/CheckBox;

.field private checkBox3:Landroid/widget/CheckBox;

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final multiplePermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final multiplePermissionLauncher2:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permissions1:[Ljava/lang/String;

.field permissions2:[Ljava/lang/String;

.field private startButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 37
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions1:[Ljava/lang/String;

    .line 43
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.BLUETOOTH"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions2:[Ljava/lang/String;

    .line 178
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda7;-><init>(Lcom/volnaiot/app/permissionsActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/volnaiot/app/permissionsActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 204
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v1, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda8;-><init>(Lcom/volnaiot/app/permissionsActivity;)V

    .line 205
    invoke-virtual {p0, v0, v1}, Lcom/volnaiot/app/permissionsActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->multiplePermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 234
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v1, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda9;-><init>(Lcom/volnaiot/app/permissionsActivity;)V

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/volnaiot/app/permissionsActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->multiplePermissionLauncher2:Landroidx/activity/result/ActivityResultLauncher;

    .line 234
    return-void
.end method

.method private askBluetoothPermissions()V
    .locals 3

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    if-lt v0, v1, :cond_0

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/volnaiot/app/permissionsActivity;->activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 194
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions2:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/volnaiot/app/permissionsActivity;->activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 198
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 199
    :cond_1
    const-string v0, "Hmm, Android isn\'t allowing the app to access bluetooth..."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    :goto_0
    return-void
.end method

.method private askLocationPermissions()V
    .locals 4

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_3

    .line 242
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions2:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions2:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->updateCheckboxes()V

    goto :goto_1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions2:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions2:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->multiplePermissionLauncher2:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_1

    .line 247
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->updateCheckboxes()V

    .line 248
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, "dialog":Landroidx/appcompat/app/AlertDialog$Builder;
    const-string v1, "Permissions needed"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/volnaiot/app/R$string;->permissions_location_explanationText:I

    .line 250
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda10;-><init>()V

    .line 251
    const-string v3, "Cancel"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda11;-><init>(Lcom/volnaiot/app/permissionsActivity;)V

    .line 252
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 257
    .end local v0    # "dialog":Landroidx/appcompat/app/AlertDialog$Builder;
    nop

    .line 265
    :cond_3
    :goto_1
    return-void
.end method

.method private askNearbyDevicesPermission()V
    .locals 4

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    .line 212
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions1:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions1:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->updateCheckboxes()V

    goto :goto_1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions1:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions1:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->multiplePermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object v1, p0, Lcom/volnaiot/app/permissionsActivity;->permissions1:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_1

    .line 217
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->updateCheckboxes()V

    .line 218
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, "dialog":Landroidx/appcompat/app/AlertDialog$Builder;
    const-string v1, "Permissions needed"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/volnaiot/app/R$string;->permissions_nearbyDevices_explanationText:I

    .line 220
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 221
    const-string v3, "Cancel"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/volnaiot/app/permissionsActivity;)V

    .line 222
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 227
    .end local v0    # "dialog":Landroidx/appcompat/app/AlertDialog$Builder;
    nop

    .line 232
    :cond_3
    :goto_1
    return-void
.end method

.method private askPerms(I)V
    .locals 5
    .param p1, "checkBoxID"    # I

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, "Bluetooth"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_1

    .line 156
    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->askBluetoothPermissions()V

    .line 160
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox3:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const-string v0, "Nearby Devices"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->askNearbyDevicesPermission()V

    goto :goto_0

    .line 166
    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->askBluetoothPermissions()V

    .line 171
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    const-string v0, "Location"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->askLocationPermissions()V

    .line 176
    :cond_3
    :goto_0
    return-void
.end method

.method private checkCheckboxes()V
    .locals 4

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->startButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox3:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->startButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    :goto_2
    return-void
.end method

.method private initCheckboxes()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/16 v3, 0x8

    if-lt v0, v2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 105
    :goto_0
    return-void
.end method

.method static synthetic lambda$askLocationPermissions$10(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 251
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$askNearbyDevicesPermission$7(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 221
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 55
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 56
    .local v0, "systemBars":Landroidx/core/graphics/Insets;
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v4, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 57
    return-object p1
.end method

.method private updateCheckboxes()V
    .locals 4

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions1:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions1:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 119
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 123
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions2:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    goto :goto_1

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions2:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->permissions2:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    goto :goto_2

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 142
    :goto_2
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->checkCheckboxes()V

    .line 143
    return-void
.end method


# virtual methods
.method synthetic lambda$askLocationPermissions$11$com-timeylies-ninehack-permissionsActivity(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/volnaiot/app/permissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method synthetic lambda$askNearbyDevicesPermission$8$com-timeylies-ninehack-permissionsActivity(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/volnaiot/app/permissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method synthetic lambda$new$5$com-timeylies-ninehack-permissionsActivity(Landroidx/activity/result/ActivityResult;)V
    .locals 2
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    .line 181
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 182
    const-string v0, "Activity result"

    const-string v1, "OK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 185
    goto :goto_0

    .line 186
    :cond_0
    const-string v0, "Denied :("

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->updateCheckboxes()V

    .line 189
    return-void
.end method

.method synthetic lambda$new$6$com-timeylies-ninehack-permissionsActivity(Ljava/util/Map;)V
    .locals 2
    .param p1, "result"    # Ljava/util/Map;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PERMISSIONS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->updateCheckboxes()V

    .line 208
    return-void
.end method

.method synthetic lambda$new$9$com-timeylies-ninehack-permissionsActivity(Ljava/util/Map;)V
    .locals 2
    .param p1, "result"    # Ljava/util/Map;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PERMISSIONS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->updateCheckboxes()V

    .line 238
    return-void
.end method

.method synthetic lambda$onCreate$1$com-timeylies-ninehack-permissionsActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/volnaiot/app/scanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/volnaiot/app/permissionsActivity;->finish()V

    .line 65
    return-void
.end method

.method synthetic lambda$onCreate$2$com-timeylies-ninehack-permissionsActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->askPerms(I)V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-timeylies-ninehack-permissionsActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 70
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->askPerms(I)V

    return-void
.end method

.method synthetic lambda$onCreate$4$com-timeylies-ninehack-permissionsActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 71
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->askPerms(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 53
    sget v0, Lcom/volnaiot/app/R$layout;->activity_permissions:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->setContentView(I)V

    .line 54
    sget v0, Lcom/volnaiot/app/R$id;->main:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 60
    sget v0, Lcom/volnaiot/app/R$id;->startButton:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->startButton:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->startButton:Landroid/widget/Button;

    new-instance v1, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/volnaiot/app/permissionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget v0, Lcom/volnaiot/app/R$id;->checkBox1:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    .line 67
    sget v0, Lcom/volnaiot/app/R$id;->checkBox2:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox2:Landroid/widget/CheckBox;

    .line 68
    sget v0, Lcom/volnaiot/app/R$id;->checkBox3:I

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/permissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox3:Landroid/widget/CheckBox;

    .line 69
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox1:Landroid/widget/CheckBox;

    new-instance v1, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/volnaiot/app/permissionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox2:Landroid/widget/CheckBox;

    new-instance v1, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/volnaiot/app/permissionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->checkBox3:Landroid/widget/CheckBox;

    new-instance v1, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/volnaiot/app/permissionsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/volnaiot/app/permissionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/volnaiot/app/permissionsActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 75
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->initCheckboxes()V

    .line 76
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->updateCheckboxes()V

    .line 77
    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 87
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    .line 88
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->updateCheckboxes()V

    .line 90
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 81
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/volnaiot/app/permissionsActivity;->updateCheckboxes()V

    .line 84
    return-void
.end method
