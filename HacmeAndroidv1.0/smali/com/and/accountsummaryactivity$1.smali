.class Lcom/and/accountsummaryactivity$1;
.super Ljava/lang/Object;
.source "accountsummaryactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/accountsummaryactivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/and/accountsummaryactivity;


# direct methods
.method constructor <init>(Lcom/and/accountsummaryactivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/accountsummaryactivity$1;->this$0:Lcom/and/accountsummaryactivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/and/accountsummaryactivity$1;->this$0:Lcom/and/accountsummaryactivity;

    const-class v2, Lcom/and/homeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/and/accountsummaryactivity$1;->this$0:Lcom/and/accountsummaryactivity;

    invoke-virtual {v1, v0}, Lcom/and/accountsummaryactivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    iget-object v1, p0, Lcom/and/accountsummaryactivity$1;->this$0:Lcom/and/accountsummaryactivity;

    invoke-virtual {v1}, Lcom/and/accountsummaryactivity;->finish()V

    .line 64
    return-void
.end method
