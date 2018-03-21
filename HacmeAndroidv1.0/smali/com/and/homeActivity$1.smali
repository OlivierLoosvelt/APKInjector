.class Lcom/and/homeActivity$1;
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
    iput-object p1, p0, Lcom/and/homeActivity$1;->this$0:Lcom/and/homeActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/homeActivity$1;)Lcom/and/homeActivity;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/and/homeActivity$1;->this$0:Lcom/and/homeActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/and/homeActivity$1;->this$0:Lcom/and/homeActivity;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/and/homeActivity$1;->this$0:Lcom/and/homeActivity;

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/and/homeActivity;->access$0(Lcom/and/homeActivity;Landroid/app/Dialog;)V

    .line 54
    iget-object v1, p0, Lcom/and/homeActivity$1;->this$0:Lcom/and/homeActivity;

    invoke-static {v1}, Lcom/and/homeActivity;->access$1(Lcom/and/homeActivity;)Landroid/app/Dialog;

    move-result-object v1

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 55
    iget-object v1, p0, Lcom/and/homeActivity$1;->this$0:Lcom/and/homeActivity;

    invoke-static {v1}, Lcom/and/homeActivity;->access$1(Lcom/and/homeActivity;)Landroid/app/Dialog;

    move-result-object v1

    const-string v2, "Hacme Android v1.0"

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/and/homeActivity$1;->this$0:Lcom/and/homeActivity;

    invoke-static {v1}, Lcom/and/homeActivity;->access$1(Lcom/and/homeActivity;)Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 57
    iget-object v1, p0, Lcom/and/homeActivity$1;->this$0:Lcom/and/homeActivity;

    invoke-static {v1}, Lcom/and/homeActivity;->access$1(Lcom/and/homeActivity;)Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 58
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lcom/and/homeActivity$1$1;

    invoke-direct {v1, p0}, Lcom/and/homeActivity$1$1;-><init>(Lcom/and/homeActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/and/homeActivity$1;->this$0:Lcom/and/homeActivity;

    invoke-static {v1}, Lcom/and/homeActivity;->access$1(Lcom/and/homeActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 65
    return-void
.end method
