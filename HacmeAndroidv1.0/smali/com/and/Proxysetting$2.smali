.class Lcom/and/Proxysetting$2;
.super Ljava/lang/Object;
.source "Proxysetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/Proxysetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/and/Proxysetting;


# direct methods
.method constructor <init>(Lcom/and/Proxysetting;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/Proxysetting$2;)Lcom/and/Proxysetting;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f050001

    const v5, 0x7f030007

    const/4 v4, 0x1

    .line 67
    iget-object v2, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    const v3, 0x7f050024

    invoke-virtual {v1, v3}, Lcom/and/Proxysetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/and/Proxysetting;->access$0(Lcom/and/Proxysetting;Landroid/widget/EditText;)V

    .line 68
    iget-object v2, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    const v3, 0x7f050025

    invoke-virtual {v1, v3}, Lcom/and/Proxysetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/and/Proxysetting;->access$1(Lcom/and/Proxysetting;Landroid/widget/EditText;)V

    .line 71
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$2(Lcom/and/Proxysetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$3(Lcom/and/Proxysetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\d{1,4}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/and/Proxysetting;->access$4(Lcom/and/Proxysetting;Landroid/app/Dialog;)V

    .line 74
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$5(Lcom/and/Proxysetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 75
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$5(Lcom/and/Proxysetting;)Landroid/app/Dialog;

    move-result-object v1

    const-string v2, "Invalid Proxy IP or Port!"

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$5(Lcom/and/Proxysetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 77
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$5(Lcom/and/Proxysetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, "button2":Landroid/widget/Button;
    new-instance v1, Lcom/and/Proxysetting$2$1;

    invoke-direct {v1, p0}, Lcom/and/Proxysetting$2$1;-><init>(Lcom/and/Proxysetting$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$5(Lcom/and/Proxysetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 89
    .end local v0    # "button2":Landroid/widget/Button;
    :cond_1
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/and/Proxysetting;->access$6(Lcom/and/Proxysetting;Landroid/app/Dialog;)V

    .line 90
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$7(Lcom/and/Proxysetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 91
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$7(Lcom/and/Proxysetting;)Landroid/app/Dialog;

    move-result-object v1

    const-string v2, "Proxy settings has been saved"

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$7(Lcom/and/Proxysetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 94
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$7(Lcom/and/Proxysetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    .restart local v0    # "button2":Landroid/widget/Button;
    new-instance v1, Lcom/and/Proxysetting$2$2;

    invoke-direct {v1, p0}, Lcom/and/Proxysetting$2$2;-><init>(Lcom/and/Proxysetting$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$2(Lcom/and/Proxysetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$3(Lcom/and/Proxysetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\d{1,4}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$7(Lcom/and/Proxysetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 107
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/and/util/Globals;->Fiddler:Ljava/lang/Boolean;

    .line 108
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$2(Lcom/and/Proxysetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/and/util/Globals;->proxyIp:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/and/Proxysetting$2;->this$0:Lcom/and/Proxysetting;

    invoke-static {v1}, Lcom/and/Proxysetting;->access$3(Lcom/and/Proxysetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/and/util/Globals;->proxyPort:Ljava/lang/String;

    .line 112
    :cond_2
    return-void
.end method
