.class Lcom/and/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/and/MainActivity;


# direct methods
.method constructor <init>(Lcom/and/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/MainActivity$3;->this$0:Lcom/and/MainActivity;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/and/MainActivity$3;->this$0:Lcom/and/MainActivity;

    const-class v2, Lcom/and/Proxysetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/and/MainActivity$3;->this$0:Lcom/and/MainActivity;

    invoke-virtual {v1, v0}, Lcom/and/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    iget-object v1, p0, Lcom/and/MainActivity$3;->this$0:Lcom/and/MainActivity;

    invoke-virtual {v1}, Lcom/and/MainActivity;->finish()V

    .line 190
    return-void
.end method
