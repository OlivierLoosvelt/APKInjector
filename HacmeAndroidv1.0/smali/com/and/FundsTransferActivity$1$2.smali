.class Lcom/and/FundsTransferActivity$1$2;
.super Ljava/lang/Object;
.source "FundsTransferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/FundsTransferActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/and/FundsTransferActivity$1;


# direct methods
.method constructor <init>(Lcom/and/FundsTransferActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/FundsTransferActivity$1$2;->this$1:Lcom/and/FundsTransferActivity$1;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/and/FundsTransferActivity$1$2;->this$1:Lcom/and/FundsTransferActivity$1;

    invoke-static {v1}, Lcom/and/FundsTransferActivity$1;->access$0(Lcom/and/FundsTransferActivity$1;)Lcom/and/FundsTransferActivity;

    move-result-object v1

    const-class v2, Lcom/and/homeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/and/FundsTransferActivity$1$2;->this$1:Lcom/and/FundsTransferActivity$1;

    invoke-static {v1}, Lcom/and/FundsTransferActivity$1;->access$0(Lcom/and/FundsTransferActivity$1;)Lcom/and/FundsTransferActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/and/FundsTransferActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    iget-object v1, p0, Lcom/and/FundsTransferActivity$1$2;->this$1:Lcom/and/FundsTransferActivity$1;

    invoke-static {v1}, Lcom/and/FundsTransferActivity$1;->access$0(Lcom/and/FundsTransferActivity$1;)Lcom/and/FundsTransferActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/and/FundsTransferActivity;->finish()V

    .line 104
    return-void
.end method
