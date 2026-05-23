.class public final synthetic Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Button;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/widget/Button;

.field public final synthetic f$3:Landroid/widget/Button;

.field public final synthetic f$4:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;ZLandroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;->f$0:Landroid/widget/Button;

    iput-boolean p2, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;->f$1:Z

    iput-object p3, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;->f$2:Landroid/widget/Button;

    iput-object p4, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;->f$3:Landroid/widget/Button;

    iput-object p5, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;->f$4:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;->f$0:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;->f$1:Z

    iget-object v2, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;->f$2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;->f$3:Landroid/widget/Button;

    iget-object v4, p0, Lcom/volnaiot/app/control_tab1$$ExternalSyntheticLambda5;->f$4:Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/volnaiot/app/control_tab1;->lambda$onCreateView$4(Landroid/widget/Button;ZLandroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method
