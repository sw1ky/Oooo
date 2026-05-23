.class public final synthetic Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# instance fields
.field public final synthetic f$0:Lcom/volnaiot/app/control_tab1;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Landroid/widget/Button;

.field public final synthetic f$3:Landroid/widget/Button;

.field public final synthetic f$4:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/volnaiot/app/control_tab1;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;->f$0:Lcom/volnaiot/app/control_tab1;

    iput-object p2, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;->f$2:Landroid/widget/Button;

    iput-object p4, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;->f$3:Landroid/widget/Button;

    iput-object p5, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;->f$4:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;->f$0:Lcom/volnaiot/app/control_tab1;

    iget-object v1, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;->f$2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;->f$3:Landroid/widget/Button;

    iget-object v4, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda4;->f$4:Landroid/widget/Button;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/volnaiot/app/control_tab1;->lambda$onCreateView$5$com-timeylies-ninehack-control_tab1(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
