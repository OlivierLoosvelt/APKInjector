.class Lcom/and/profileupdateactivity$1;
.super Ljava/lang/Object;
.source "profileupdateactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/profileupdateactivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/and/profileupdateactivity;


# direct methods
.method constructor <init>(Lcom/and/profileupdateactivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/profileupdateactivity$1;)Lcom/and/profileupdateactivity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v8, 0x7f030007

    .line 68
    iget-object v7, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$0(Lcom/and/profileupdateactivity;)Lcom/and/service/Profileupdateservice;

    move-result-object v0

    iget-object v1, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v1}, Lcom/and/profileupdateactivity;->access$1(Lcom/and/profileupdateactivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v2}, Lcom/and/profileupdateactivity;->access$2(Lcom/and/profileupdateactivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v3}, Lcom/and/profileupdateactivity;->access$3(Lcom/and/profileupdateactivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v4}, Lcom/and/profileupdateactivity;->access$4(Lcom/and/profileupdateactivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v5}, Lcom/and/profileupdateactivity;->access$5(Lcom/and/profileupdateactivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/and/service/Profileupdateservice;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/and/response/ProfileupdateResponse;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/and/profileupdateactivity;->access$6(Lcom/and/profileupdateactivity;Lcom/and/response/ProfileupdateResponse;)V

    .line 70
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/and/profileupdateactivity;->access$7(Lcom/and/profileupdateactivity;Landroid/app/Dialog;)V

    .line 71
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$8(Lcom/and/profileupdateactivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 72
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$8(Lcom/and/profileupdateactivity;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v1}, Lcom/and/profileupdateactivity;->access$9(Lcom/and/profileupdateactivity;)Lcom/and/response/ProfileupdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/and/response/ProfileupdateResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$8(Lcom/and/profileupdateactivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 75
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$9(Lcom/and/profileupdateactivity;)Lcom/and/response/ProfileupdateResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/and/response/ProfileupdateResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$8(Lcom/and/profileupdateactivity;)Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "Profile Updated!"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$8(Lcom/and/profileupdateactivity;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/and/profileupdateactivity$1$1;

    invoke-direct {v1, p0}, Lcom/and/profileupdateactivity$1$1;-><init>(Lcom/and/profileupdateactivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$8(Lcom/and/profileupdateactivity;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 96
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$8(Lcom/and/profileupdateactivity;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 97
    .local v6, "button":Landroid/widget/Button;
    new-instance v0, Lcom/and/profileupdateactivity$1$2;

    invoke-direct {v0, p0}, Lcom/and/profileupdateactivity$1$2;-><init>(Lcom/and/profileupdateactivity$1;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$8(Lcom/and/profileupdateactivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 105
    return-void

    .line 91
    .end local v6    # "button":Landroid/widget/Button;
    :cond_0
    iget-object v0, p0, Lcom/and/profileupdateactivity$1;->this$0:Lcom/and/profileupdateactivity;

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$8(Lcom/and/profileupdateactivity;)Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "Profile Update Failed!"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
