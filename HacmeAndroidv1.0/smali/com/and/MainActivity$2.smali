.class Lcom/and/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/and/MainActivity;


# direct methods
.method constructor <init>(Lcom/and/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/MainActivity$2;)Lcom/and/MainActivity;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f05001f

    const v10, 0x7f050001

    const v9, 0x7f030007

    const/4 v8, 0x1

    .line 100
    iget-object v5, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    const v6, 0x7f050014

    invoke-virtual {v4, v6}, Lcom/and/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {v5, v4}, Lcom/and/MainActivity;->access$1(Lcom/and/MainActivity;Landroid/widget/EditText;)V

    .line 101
    iget-object v5, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    const v6, 0x7f050005

    invoke-virtual {v4, v6}, Lcom/and/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {v5, v4}, Lcom/and/MainActivity;->access$2(Lcom/and/MainActivity;Landroid/widget/EditText;)V

    .line 102
    iget-object v5, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    const v6, 0x7f050016

    invoke-virtual {v4, v6}, Lcom/and/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-static {v5, v4}, Lcom/and/MainActivity;->access$3(Lcom/and/MainActivity;Landroid/widget/CheckBox;)V

    .line 103
    iget-object v5, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    const v6, 0x7f050015

    invoke-virtual {v4, v6}, Lcom/and/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-static {v5, v4}, Lcom/and/MainActivity;->access$4(Lcom/and/MainActivity;Landroid/widget/EditText;)V

    .line 106
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$5(Lcom/and/MainActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/and/util/Globals;->ServerIP:Ljava/lang/String;

    .line 108
    sget-object v4, Lcom/and/util/Globals;->ServerIP:Ljava/lang/String;

    const-string v5, "127.0.0.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/and/util/Globals;->ServerIP:Ljava/lang/String;

    const-string v5, "localhost"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/and/util/Globals;->ServerIP:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "ERROR: Invalid Server IP!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-direct {v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/and/MainActivity;->access$6(Lcom/and/MainActivity;Landroid/app/Dialog;)V

    .line 111
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 112
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    const-string v5, "Invalid Server IP!"

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 114
    .local v2, "errorPopup":Landroid/widget/TextView;
    const-string v4, "Remember to use the system\'s real IP rather than 127.0.0.1 or localhost.\n\n"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 116
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 117
    .local v1, "button2":Landroid/widget/Button;
    new-instance v4, Lcom/and/MainActivity$2$1;

    invoke-direct {v4, p0}, Lcom/and/MainActivity$2$1;-><init>(Lcom/and/MainActivity$2;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 181
    .end local v1    # "button2":Landroid/widget/Button;
    .end local v2    # "errorPopup":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$7(Lcom/and/MainActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    .line 139
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/and/util/Globals;->ServerIP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/and/util/Globals;->ServerPort:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/spring-ws-standalone/ws"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/and/util/Globals;->PostURL:Ljava/lang/String;

    .line 140
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    iget-object v5, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v5}, Lcom/and/MainActivity;->access$8(Lcom/and/MainActivity;)Lcom/and/service/Loginservice;

    move-result-object v5

    iget-object v6, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v6}, Lcom/and/MainActivity;->access$9(Lcom/and/MainActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v7}, Lcom/and/MainActivity;->access$10(Lcom/and/MainActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/and/service/Loginservice;->send(Ljava/lang/String;Ljava/lang/String;)Lcom/and/response/Loginresponse;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/and/MainActivity;->access$11(Lcom/and/MainActivity;Lcom/and/response/Loginresponse;)V

    .line 143
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$12(Lcom/and/MainActivity;)Lcom/and/response/Loginresponse;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$12(Lcom/and/MainActivity;)Lcom/and/response/Loginresponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/and/response/Loginresponse;->getSessionid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 144
    :cond_2
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-direct {v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/and/MainActivity;->access$6(Lcom/and/MainActivity;Landroid/app/Dialog;)V

    .line 145
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 146
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    const-string v5, "Login Failed!"

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 148
    .restart local v2    # "errorPopup":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$12(Lcom/and/MainActivity;)Lcom/and/response/Loginresponse;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 149
    const-string v4, "Could not connect to the server.\n\nCheck the user guide for Lessons 9 and 10. You\'ll have to hack some stuff first!"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_2
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 158
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 159
    .local v0, "button":Landroid/widget/Button;
    new-instance v4, Lcom/and/MainActivity$2$2;

    invoke-direct {v4, p0}, Lcom/and/MainActivity$2$2;-><init>(Lcom/and/MainActivity$2;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 135
    .end local v0    # "button":Landroid/widget/Button;
    .end local v2    # "errorPopup":Landroid/widget/TextView;
    :cond_3
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 150
    .restart local v2    # "errorPopup":Landroid/widget/TextView;
    :cond_4
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$12(Lcom/and/MainActivity;)Lcom/and/response/Loginresponse;

    move-result-object v4

    if-nez v4, :cond_5

    .line 151
    const-string v4, "Could not connect to the server.\n\n"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 152
    :cond_5
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$12(Lcom/and/MainActivity;)Lcom/and/response/Loginresponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/and/response/Loginresponse;->getSessionid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 153
    const-string v4, "Please check the username and password then try again.\n\n"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 155
    :cond_6
    const-string v4, "Wierd Uknown Error!!! OH NOEZ!"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 170
    .end local v2    # "errorPopup":Landroid/widget/TextView;
    :cond_7
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    const-class v5, Lcom/and/loginactivity2;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v3, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$9(Lcom/and/MainActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v5}, Lcom/and/MainActivity;->access$12(Lcom/and/MainActivity;)Lcom/and/response/Loginresponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/and/response/Loginresponse;->getSessionid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v6}, Lcom/and/MainActivity;->access$12(Lcom/and/MainActivity;)Lcom/and/response/Loginresponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/and/response/Loginresponse;->getAccountnumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/and/util/Globals;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "Username"

    iget-object v5, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v5}, Lcom/and/MainActivity;->access$9(Lcom/and/MainActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v4, "check"

    const-string v5, "doesnot"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v4, "Password"

    iget-object v5, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-static {v5}, Lcom/and/MainActivity;->access$10(Lcom/and/MainActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-virtual {v4, v3}, Lcom/and/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    iget-object v4, p0, Lcom/and/MainActivity$2;->this$0:Lcom/and/MainActivity;

    invoke-virtual {v4}, Lcom/and/MainActivity;->finish()V

    goto/16 :goto_0
.end method
