.class public Lcom/volnaiot/app/control_tab1;
.super Landroidx/fragment/app/Fragment;
.source "control_tab1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateView$4(Landroid/widget/Button;ZLandroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .param p0, "unlockButton"    # Landroid/widget/Button;
    .param p1, "result"    # Z
    .param p2, "lockButton"    # Landroid/widget/Button;
    .param p3, "stsButton"    # Landroid/widget/Button;
    .param p4, "ejectBatteryButton"    # Landroid/widget/Button;

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    invoke-virtual {p3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    invoke-virtual {p4, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-timeylies-ninehack-control_tab1(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "result":Landroid/os/Bundle;
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 44
    invoke-virtual {p0}, Lcom/volnaiot/app/control_tab1;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "tab1tx"

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-timeylies-ninehack-control_tab1(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "result":Landroid/os/Bundle;
    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const-string v1, "data"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 49
    invoke-virtual {p0}, Lcom/volnaiot/app/control_tab1;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "tab1tx"

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-timeylies-ninehack-control_tab1(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "result":Landroid/os/Bundle;
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 54
    invoke-virtual {p0}, Lcom/volnaiot/app/control_tab1;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "tab1tx"

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-timeylies-ninehack-control_tab1(Landroid/widget/RadioGroup;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/view/View;)V
    .locals 6
    .param p1, "modeSelect"    # Landroid/widget/RadioGroup;
    .param p2, "HeadlightSwitch"    # Lcom/google/android/material/switchmaterial/SwitchMaterial;
    .param p3, "ThrottleSwitch"    # Lcom/google/android/material/switchmaterial/SwitchMaterial;
    .param p4, "v"    # Landroid/view/View;

    .line 59
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcom/volnaiot/app/R$id;->mode1RB:I

    if-ne v0, v1, :cond_0

    .line 60
    const/4 v0, 0x0

    .local v0, "selectedMode":B
    goto :goto_0

    .line 61
    .end local v0    # "selectedMode":B
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcom/volnaiot/app/R$id;->mode2RB:I

    if-ne v0, v1, :cond_1

    .line 62
    const/4 v0, 0x1

    .restart local v0    # "selectedMode":B
    goto :goto_0

    .line 63
    .end local v0    # "selectedMode":B
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcom/volnaiot/app/R$id;->mode3RB:I

    if-ne v0, v1, :cond_2

    .line 64
    const/4 v0, 0x2

    .restart local v0    # "selectedMode":B
    goto :goto_0

    .line 67
    .end local v0    # "selectedMode":B
    :cond_2
    const/4 v0, -0x1

    .line 70
    .restart local v0    # "selectedMode":B
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    const/4 v1, 0x3

    .local v1, "switches":B
    goto :goto_1

    .line 72
    .end local v1    # "switches":B
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    const/4 v1, 0x1

    .restart local v1    # "switches":B
    goto :goto_1

    .line 74
    .end local v1    # "switches":B
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    const/4 v1, 0x2

    .restart local v1    # "switches":B
    goto :goto_1

    .line 77
    .end local v1    # "switches":B
    :cond_5
    const/4 v1, 0x0

    .line 80
    .restart local v1    # "switches":B
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v2, "result":Landroid/os/Bundle;
    const/4 v3, 0x3

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v3, v4, v5

    const/4 v3, 0x1

    aput-byte v0, v4, v3

    const/4 v3, 0x2

    aput-byte v1, v4, v3

    const-string v3, "data"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 82
    invoke-virtual {p0}, Lcom/volnaiot/app/control_tab1;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "tab1tx"

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-timeylies-ninehack-control_tab1(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "unlockButton"    # Landroid/widget/Button;
    .param p2, "lockButton"    # Landroid/widget/Button;
    .param p3, "stsButton"    # Landroid/widget/Button;
    .param p4, "ejectBatteryButton"    # Landroid/widget/Button;
    .param p5, "requestKey"    # Ljava/lang/String;
    .param p6, "bundle"    # Landroid/os/Bundle;

    .line 85
    const-string v0, "data"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 86
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/volnaiot/app/control_tab1;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    new-instance v8, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;

    move-object v1, v8

    move-object v2, p1

    move v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;-><init>(Landroid/widget/Button;ZLandroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    move-object/from16 v6, p0

    sget v0, Lcom/volnaiot/app/R$layout;->fragment_control_tab1:I

    const/4 v1, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v7, v0, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 23
    .local v9, "view":Landroid/view/View;
    sget v0, Lcom/volnaiot/app/R$id;->t1b1:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    .line 24
    .local v10, "unlockButton":Landroid/widget/Button;
    sget v0, Lcom/volnaiot/app/R$id;->t1b2:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Button;

    .line 25
    .local v11, "lockButton":Landroid/widget/Button;
    sget v0, Lcom/volnaiot/app/R$id;->t1b3:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    .line 26
    .local v12, "stsButton":Landroid/widget/Button;
    sget v0, Lcom/volnaiot/app/R$id;->t1b4:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Button;

    .line 27
    .local v13, "ejectBatteryButton":Landroid/widget/Button;
    sget v0, Lcom/volnaiot/app/R$id;->radioGroup:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/RadioGroup;

    .line 28
    .local v14, "modeSelect":Landroid/widget/RadioGroup;
    sget v0, Lcom/volnaiot/app/R$id;->throttleSwitch:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 29
    .local v15, "ThrottleSwitch":Lcom/google/android/material/switchmaterial/SwitchMaterial;
    sget v0, Lcom/volnaiot/app/R$id;->headlightSwitch:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 41
    .local v5, "HeadlightSwitch":Lcom/google/android/material/switchmaterial/SwitchMaterial;
    new-instance v0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda0;

    invoke-direct {v0, v6}, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda0;-><init>(Lcom/volnaiot/app/control_tab1;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda1;

    invoke-direct {v0, v6}, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda1;-><init>(Lcom/volnaiot/app/control_tab1;)V

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda2;

    invoke-direct {v0, v6}, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda2;-><init>(Lcom/volnaiot/app/control_tab1;)V

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda3;

    invoke-direct {v0, v6, v14, v5, v15}, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda3;-><init>(Lcom/volnaiot/app/control_tab1;Landroid/widget/RadioGroup;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/volnaiot/app/control_tab1;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    new-instance v3, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v7, v3

    move-object v3, v11

    move-object v8, v4

    move-object v4, v12

    move-object/from16 v16, v5

    .end local v5    # "HeadlightSwitch":Lcom/google/android/material/switchmaterial/SwitchMaterial;
    .local v16, "HeadlightSwitch":Lcom/google/android/material/switchmaterial/SwitchMaterial;
    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;-><init>(Lcom/volnaiot/app/control_tab1;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    const-string v0, "tab1rx"

    invoke-virtual {v8, v0, v6, v7}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 94
    return-object v9
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 99
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    return-void
.end method
