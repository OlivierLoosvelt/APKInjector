.class Lcom/and/loginactivity2$5$2;
.super Ljava/lang/Object;
.source "loginactivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/loginactivity2$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/and/loginactivity2$5;


# direct methods
.method constructor <init>(Lcom/and/loginactivity2$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/loginactivity2$5$2;->this$1:Lcom/and/loginactivity2$5;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/and/loginactivity2$5$2;->this$1:Lcom/and/loginactivity2$5;

    invoke-static {v1}, Lcom/and/loginactivity2$5;->access$0(Lcom/and/loginactivity2$5;)Lcom/and/loginactivity2;

    move-result-object v1

    invoke-static {v1}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 239
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/and/loginactivity2$5$2;->this$1:Lcom/and/loginactivity2$5;

    invoke-static {v1}, Lcom/and/loginactivity2$5;->access$0(Lcom/and/loginactivity2$5;)Lcom/and/loginactivity2;

    move-result-object v1

    const-class v2, Lcom/and/loginactivity2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/and/loginactivity2$5$2;->this$1:Lcom/and/loginactivity2$5;

    invoke-static {v1}, Lcom/and/loginactivity2$5;->access$0(Lcom/and/loginactivity2$5;)Lcom/and/loginactivity2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/and/loginactivity2;->startActivity(Landroid/content/Intent;)V

    .line 241
    iget-object v1, p0, Lcom/and/loginactivity2$5$2;->this$1:Lcom/and/loginactivity2$5;

    invoke-static {v1}, Lcom/and/loginactivity2$5;->access$0(Lcom/and/loginactivity2$5;)Lcom/and/loginactivity2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/and/loginactivity2;->finish()V

    .line 242
    return-void
.end method
