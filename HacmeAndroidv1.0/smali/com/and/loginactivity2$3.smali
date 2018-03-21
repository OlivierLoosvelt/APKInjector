.class Lcom/and/loginactivity2$3;
.super Ljava/lang/Object;
.source "loginactivity2.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/loginactivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/and/loginactivity2;


# direct methods
.method constructor <init>(Lcom/and/loginactivity2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/loginactivity2$3;->this$0:Lcom/and/loginactivity2;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/and/loginactivity2$3;->this$0:Lcom/and/loginactivity2;

    invoke-static {v0}, Lcom/and/loginactivity2;->access$2(Lcom/and/loginactivity2;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/and/loginactivity2$3;->this$0:Lcom/and/loginactivity2;

    invoke-static {v0}, Lcom/and/loginactivity2;->access$2(Lcom/and/loginactivity2;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/and/loginactivity2$3;->this$0:Lcom/and/loginactivity2;

    invoke-static {v0}, Lcom/and/loginactivity2;->access$3(Lcom/and/loginactivity2;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->requestFocus(I)Z

    .line 107
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 111
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 115
    return-void
.end method
