.class Lcom/and/loginactivity2$5;
.super Ljava/lang/Object;
.source "loginactivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/and/loginactivity2$5;)Lcom/and/loginactivity2;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    :try_start_0
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    new-instance v13, Ljava/lang/StringBuilder;

    iget-object v14, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v14}, Lcom/and/loginactivity2;->access$0(Lcom/and/loginactivity2;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v14}, Lcom/and/loginactivity2;->access$1(Lcom/and/loginactivity2;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v14}, Lcom/and/loginactivity2;->access$2(Lcom/and/loginactivity2;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v14}, Lcom/and/loginactivity2;->access$3(Lcom/and/loginactivity2;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/and/loginactivity2;->access$4(Lcom/and/loginactivity2;Ljava/lang/String;)V

    .line 152
    const-string v12, "/data/data/com.and/files/creds.xml"

    invoke-static {v12}, Lcom/and/util/FileUtil;->filesexistscheck(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 153
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v12}, Lcom/and/loginactivity2;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v12, "Username"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "username":Ljava/lang/String;
    const-string v12, "Password"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 157
    .local v10, "password":Ljava/lang/String;
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    const-string v13, "creds.xml"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/and/loginactivity2;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 158
    .local v5, "fOut":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v8, "osw":Ljava/io/OutputStreamWriter;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "<credentials><username>"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v14}, Lcom/and/loginactivity2;->access$5(Lcom/and/loginactivity2;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/and/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</username>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 161
    const-string v13, "<password>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v14}, Lcom/and/loginactivity2;->access$5(Lcom/and/loginactivity2;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/and/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</password>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 162
    const-string v13, "<server>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/and/util/Globals;->ServerIP:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v14}, Lcom/and/loginactivity2;->access$5(Lcom/and/loginactivity2;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/and/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</server>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 163
    const-string v13, "</credentials>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 159
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->flush()V

    .line 166
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V

    .line 167
    new-instance v6, Landroid/content/Intent;

    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    const-class v13, Lcom/and/homeActivity;

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v6, "i":Landroid/content/Intent;
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v12, v6}, Lcom/and/loginactivity2;->startActivity(Landroid/content/Intent;)V

    .line 169
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v12}, Lcom/and/loginactivity2;->finish()V

    .line 261
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "data":Ljava/lang/String;
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .end local v6    # "i":Landroid/content/Intent;
    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    .end local v10    # "password":Ljava/lang/String;
    .end local v11    # "username":Ljava/lang/String;
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$5(Lcom/and/loginactivity2;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_2

    .line 173
    const-string v12, "/data/data/com.and/files/creds.xml"

    invoke-static {v12}, Lcom/and/util/FileUtil;->filesexistscheck(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 175
    const-string v12, "/data/data/com.and/files/creds.xml"

    invoke-static {v12}, Lcom/and/util/FileUtil;->deletfile(Ljava/lang/String;)V

    .line 178
    :cond_1
    new-instance v6, Landroid/content/Intent;

    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    const-class v13, Lcom/and/MainActivity;

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .restart local v6    # "i":Landroid/content/Intent;
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v12, v6}, Lcom/and/loginactivity2;->startActivity(Landroid/content/Intent;)V

    .line 180
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v12}, Lcom/and/loginactivity2;->finish()V

    .line 183
    .end local v6    # "i":Landroid/content/Intent;
    :cond_2
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    new-instance v13, Lcom/and/service/Loginservice;

    invoke-direct {v13}, Lcom/and/service/Loginservice;-><init>()V

    invoke-static {v12, v13}, Lcom/and/loginactivity2;->access$6(Lcom/and/loginactivity2;Lcom/and/service/Loginservice;)V

    .line 184
    new-instance v9, Lcom/and/parsers/loginparsercrypt;

    invoke-direct {v9}, Lcom/and/parsers/loginparsercrypt;-><init>()V

    .line 185
    .local v9, "parser":Lcom/and/parsers/loginparsercrypt;
    const-string v12, "/data/data/com.and/files/creds.xml"

    invoke-static {v12}, Lcom/and/util/FileUtil;->ReadSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/and/parsers/loginparsercrypt;->parser(Ljava/lang/String;)Lcom/and/base/Login;

    move-result-object v7

    .line 188
    .local v7, "login":Lcom/and/base/Login;
    invoke-virtual {v7}, Lcom/and/base/Login;->getUsername()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/and/util/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v13}, Lcom/and/loginactivity2;->access$5(Lcom/and/loginactivity2;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 190
    const-string v12, "/data/data/com.and/files/creds.xml"

    invoke-static {v12}, Lcom/and/util/FileUtil;->deletfile(Ljava/lang/String;)V

    .line 191
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    new-instance v13, Landroid/app/Dialog;

    iget-object v14, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-direct {v13, v14}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v12, v13}, Lcom/and/loginactivity2;->access$7(Lcom/and/loginactivity2;Landroid/app/Dialog;)V

    .line 192
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v12

    const v13, 0x7f030007

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 193
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v12

    const-string v13, "Incorrect PIN!"

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 195
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v12

    const v13, 0x7f050001

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 196
    .local v1, "button":Landroid/widget/Button;
    new-instance v12, Lcom/and/loginactivity2$5$1;

    invoke-direct {v12, p0}, Lcom/and/loginactivity2$5$1;-><init>(Lcom/and/loginactivity2$5;)V

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    new-instance v6, Landroid/content/Intent;

    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    const-class v13, Lcom/and/MainActivity;

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .restart local v6    # "i":Landroid/content/Intent;
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v12, v6}, Lcom/and/loginactivity2;->startActivity(Landroid/content/Intent;)V

    .line 206
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v12}, Lcom/and/loginactivity2;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 256
    .end local v1    # "button":Landroid/widget/Button;
    .end local v6    # "i":Landroid/content/Intent;
    .end local v7    # "login":Lcom/and/base/Login;
    .end local v9    # "parser":Lcom/and/parsers/loginparsercrypt;
    :catch_0
    move-exception v3

    .line 258
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 210
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "login":Lcom/and/base/Login;
    .restart local v9    # "parser":Lcom/and/parsers/loginparsercrypt;
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Lcom/and/base/Login;->getUsername()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/and/util/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v13}, Lcom/and/loginactivity2;->access$5(Lcom/and/loginactivity2;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 211
    .restart local v11    # "username":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/and/base/Login;->getPassword()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/and/util/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v13}, Lcom/and/loginactivity2;->access$5(Lcom/and/loginactivity2;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 212
    .restart local v10    # "password":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/and/base/Login;->getServer()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/and/util/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v13}, Lcom/and/loginactivity2;->access$5(Lcom/and/loginactivity2;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/and/util/Globals;->ServerIP:Ljava/lang/String;

    .line 214
    sget-object v12, Lcom/and/util/Globals;->ServerIP:Ljava/lang/String;

    if-eqz v12, :cond_4

    if-eqz v11, :cond_4

    if-nez v10, :cond_5

    .line 215
    :cond_4
    new-instance v6, Landroid/content/Intent;

    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    const-class v13, Lcom/and/MainActivity;

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .restart local v6    # "i":Landroid/content/Intent;
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v12, v6}, Lcom/and/loginactivity2;->startActivity(Landroid/content/Intent;)V

    .line 217
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v12}, Lcom/and/loginactivity2;->finish()V

    goto/16 :goto_0

    .line 219
    .end local v6    # "i":Landroid/content/Intent;
    :cond_5
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    iget-object v13, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v13}, Lcom/and/loginactivity2;->access$9(Lcom/and/loginactivity2;)Lcom/and/service/Loginservice;

    move-result-object v13

    invoke-virtual {v13, v11, v10}, Lcom/and/service/Loginservice;->send(Ljava/lang/String;Ljava/lang/String;)Lcom/and/response/Loginresponse;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/and/loginactivity2;->access$10(Lcom/and/loginactivity2;Lcom/and/response/Loginresponse;)V

    .line 220
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$11(Lcom/and/loginactivity2;)Lcom/and/response/Loginresponse;

    move-result-object v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$11(Lcom/and/loginactivity2;)Lcom/and/response/Loginresponse;

    move-result-object v12

    invoke-virtual {v12}, Lcom/and/response/Loginresponse;->getSessionid()Ljava/lang/String;

    move-result-object v12

    const-string v13, "failed"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 221
    :cond_6
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    new-instance v13, Landroid/app/Dialog;

    iget-object v14, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-direct {v13, v14}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v12, v13}, Lcom/and/loginactivity2;->access$7(Lcom/and/loginactivity2;Landroid/app/Dialog;)V

    .line 222
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v12

    const v13, 0x7f030007

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 223
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v12

    const-string v13, "Login Failed!"

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v12

    const v13, 0x7f05001f

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 225
    .local v4, "errorPopup":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$11(Lcom/and/loginactivity2;)Lcom/and/response/Loginresponse;

    move-result-object v12

    if-nez v12, :cond_7

    sget-object v12, Lcom/and/util/Globals;->Httpsflag:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 226
    const-string v12, "Could not connect to the server.\n\nCheck the user guide for Lesson 10A. You\'ll have to hack some stuff first!"

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_1
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 235
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v12

    const v13, 0x7f050001

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 236
    .restart local v1    # "button":Landroid/widget/Button;
    new-instance v12, Lcom/and/loginactivity2$5$2;

    invoke-direct {v12, p0}, Lcom/and/loginactivity2$5$2;-><init>(Lcom/and/loginactivity2$5;)V

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 227
    .end local v1    # "button":Landroid/widget/Button;
    :cond_7
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$11(Lcom/and/loginactivity2;)Lcom/and/response/Loginresponse;

    move-result-object v12

    if-nez v12, :cond_8

    .line 228
    const-string v12, "Could not connect to the server.\n\n"

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 229
    :cond_8
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$11(Lcom/and/loginactivity2;)Lcom/and/response/Loginresponse;

    move-result-object v12

    invoke-virtual {v12}, Lcom/and/response/Loginresponse;->getSessionid()Ljava/lang/String;

    move-result-object v12

    const-string v13, "failed"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 230
    const-string v12, "Please check the username and password then try again.\n\n"

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 232
    :cond_9
    const-string v12, "Wierd Uknown Error!!! OH NOEZ!"

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 247
    .end local v4    # "errorPopup":Landroid/widget/TextView;
    :cond_a
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v12}, Lcom/and/loginactivity2;->access$11(Lcom/and/loginactivity2;)Lcom/and/response/Loginresponse;

    move-result-object v12

    invoke-virtual {v12}, Lcom/and/response/Loginresponse;->getSessionid()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-static {v13}, Lcom/and/loginactivity2;->access$11(Lcom/and/loginactivity2;)Lcom/and/response/Loginresponse;

    move-result-object v13

    invoke-virtual {v13}, Lcom/and/response/Loginresponse;->getAccountnumber()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/and/util/Globals;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v6, Landroid/content/Intent;

    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    const-class v13, Lcom/and/homeActivity;

    invoke-direct {v6, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .restart local v6    # "i":Landroid/content/Intent;
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v12, v6}, Lcom/and/loginactivity2;->startActivity(Landroid/content/Intent;)V

    .line 250
    iget-object v12, p0, Lcom/and/loginactivity2$5;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v12}, Lcom/and/loginactivity2;->finish()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
