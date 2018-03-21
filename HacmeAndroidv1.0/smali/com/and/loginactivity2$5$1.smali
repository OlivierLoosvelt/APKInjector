.class Lcom/and/loginactivity2$5$1;
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
    iput-object p1, p0, Lcom/and/loginactivity2$5$1;->this$1:Lcom/and/loginactivity2$5;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/and/loginactivity2$5$1;->this$1:Lcom/and/loginactivity2$5;

    invoke-static {v0}, Lcom/and/loginactivity2$5;->access$0(Lcom/and/loginactivity2$5;)Lcom/and/loginactivity2;

    move-result-object v0

    invoke-static {v0}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 199
    iget-object v0, p0, Lcom/and/loginactivity2$5$1;->this$1:Lcom/and/loginactivity2$5;

    invoke-static {v0}, Lcom/and/loginactivity2$5;->access$0(Lcom/and/loginactivity2$5;)Lcom/and/loginactivity2;

    move-result-object v0

    invoke-static {v0}, Lcom/and/loginactivity2;->access$8(Lcom/and/loginactivity2;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 201
    return-void
.end method
