.class Lcom/and/TransactionHistoryactivity$1;
.super Ljava/lang/Object;
.source "TransactionHistoryactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/TransactionHistoryactivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/and/TransactionHistoryactivity;


# direct methods
.method constructor <init>(Lcom/and/TransactionHistoryactivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/TransactionHistoryactivity$1;->this$0:Lcom/and/TransactionHistoryactivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/and/TransactionHistoryactivity$1;->this$0:Lcom/and/TransactionHistoryactivity;

    const-class v2, Lcom/and/homeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/and/TransactionHistoryactivity$1;->this$0:Lcom/and/TransactionHistoryactivity;

    invoke-virtual {v1, v0}, Lcom/and/TransactionHistoryactivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    iget-object v1, p0, Lcom/and/TransactionHistoryactivity$1;->this$0:Lcom/and/TransactionHistoryactivity;

    invoke-virtual {v1}, Lcom/and/TransactionHistoryactivity;->finish()V

    .line 91
    return-void
.end method
