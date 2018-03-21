.class Lcom/and/FundsTransferActivity$1$1;
.super Ljava/lang/Object;
.source "FundsTransferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/and/FundsTransferActivity$1$1;->this$1:Lcom/and/FundsTransferActivity$1;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/and/FundsTransferActivity$1$1;->this$1:Lcom/and/FundsTransferActivity$1;

    invoke-static {v0}, Lcom/and/FundsTransferActivity$1;->access$0(Lcom/and/FundsTransferActivity$1;)Lcom/and/FundsTransferActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/and/FundsTransferActivity;->access$2(Lcom/and/FundsTransferActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 85
    return-void
.end method
