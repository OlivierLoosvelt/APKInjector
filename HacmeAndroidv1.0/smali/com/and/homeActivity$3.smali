.class Lcom/and/homeActivity$3;
.super Ljava/lang/Object;
.source "homeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/homeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/and/homeActivity;


# direct methods
.method constructor <init>(Lcom/and/homeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/homeActivity$3;->this$0:Lcom/and/homeActivity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/and/homeActivity$3;->this$0:Lcom/and/homeActivity;

    const-class v2, Lcom/and/FundsTransferActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/and/homeActivity$3;->this$0:Lcom/and/homeActivity;

    invoke-virtual {v1, v0}, Lcom/and/homeActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    iget-object v1, p0, Lcom/and/homeActivity$3;->this$0:Lcom/and/homeActivity;

    invoke-virtual {v1}, Lcom/and/homeActivity;->finish()V

    .line 84
    return-void
.end method
