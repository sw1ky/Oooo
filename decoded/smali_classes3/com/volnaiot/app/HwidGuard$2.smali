.class Lcom/volnaiot/app/HwidGuard$2;
.super Ljava/lang/Object;
.source "HwidGuard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/volnaiot/app/HwidGuard;->showBlock(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/volnaiot/app/HwidGuard$2;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/volnaiot/app/HwidGuard$2;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method
