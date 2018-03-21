.class Lcom/and/FundsTransferActivity$2;
.super Ljava/lang/Object;
.source "FundsTransferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/FundsTransferActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/and/FundsTransferActivity;


# direct methods
.method constructor <init>(Lcom/and/FundsTransferActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/FundsTransferActivity$2;->this$0:Lcom/and/FundsTransferActivity;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/and/FundsTransferActivity$2;->this$0:Lcom/and/FundsTransferActivity;

    const-class v2, Lcom/and/homeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/and/FundsTransferActivity$2;->this$0:Lcom/and/FundsTransferActivity;

    invoke-virtual {v1, v0}, Lcom/and/FundsTransferActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    iget-object v1, p0, Lcom/and/FundsTransferActivity$2;->this$0:Lcom/and/FundsTransferActivity;

    invoke-virtual {v1}, Lcom/and/FundsTransferActivity;->finish()V

    .line 138
    return-void
.end method
