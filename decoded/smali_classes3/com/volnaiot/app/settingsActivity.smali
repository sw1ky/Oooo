.class public Lcom/volnaiot/app/settingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "settingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {p0}, Lcom/volnaiot/app/settingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "activity_settings"

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/volnaiot/app/settingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/volnaiot/app/settingsActivity;->setContentView(I)V

    return-void
.end method
