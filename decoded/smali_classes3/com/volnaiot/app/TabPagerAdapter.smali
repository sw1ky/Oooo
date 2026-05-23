.class public Lcom/volnaiot/app/TabPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "TabPagerAdapter.java"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/volnaiot/app/control_tab1;

    invoke-direct {v0}, Lcom/volnaiot/app/control_tab1;-><init>()V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
