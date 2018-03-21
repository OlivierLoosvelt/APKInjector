.class Lcom/and/loginactivity2$4;
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
    iput-object p1, p0, Lcom/and/loginactivity2$4;->this$0:Lcom/and/loginactivity2;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    const-string v1, "/data/data/com.and/files/creds.xml"

    invoke-static {v1}, Lcom/and/util/FileUtil;->filesexistscheck(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "/data/data/com.and/files/creds.xml"

    invoke-static {v1}, Lcom/and/util/FileUtil;->deletfile(Ljava/lang/String;)V

    .line 139
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/and/loginactivity2$4;->this$0:Lcom/and/loginactivity2;

    const-class v2, Lcom/and/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/and/loginactivity2$4;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v1, v0}, Lcom/and/loginactivity2;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object v1, p0, Lcom/and/loginactivity2$4;->this$0:Lcom/and/loginactivity2;

    invoke-virtual {v1}, Lcom/and/loginactivity2;->finish()V

    .line 142
    return-void
.end method
