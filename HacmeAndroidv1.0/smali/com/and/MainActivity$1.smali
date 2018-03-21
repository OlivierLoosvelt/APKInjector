.class Lcom/and/MainActivity$1;
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
    iput-object p1, p0, Lcom/and/MainActivity$1;->this$0:Lcom/and/MainActivity;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v4, p0, Lcom/and/MainActivity$1;->this$0:Lcom/and/MainActivity;

    invoke-static {v4}, Lcom/and/MainActivity;->access$0(Lcom/and/MainActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 65
    :try_start_0
    iget-object v4, p0, Lcom/and/MainActivity$1;->this$0:Lcom/and/MainActivity;

    const-string v5, "Disclaimer.xml"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/and/MainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 67
    .local v2, "fOut":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 68
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    const-string v0, "<Done>Yes</Done>"

    .line 71
    .local v0, "data":Ljava/lang/String;
    const-string v4, "<Done>Yes</Done>"

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 73
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
