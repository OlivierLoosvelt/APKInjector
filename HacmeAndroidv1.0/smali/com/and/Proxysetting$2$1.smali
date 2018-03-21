.class Lcom/and/Proxysetting$2$1;
.super Ljava/lang/Object;
.source "Proxysetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/Proxysetting$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/and/Proxysetting$2;


# direct methods
.method constructor <init>(Lcom/and/Proxysetting$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/Proxysetting$2$1;->this$1:Lcom/and/Proxysetting$2;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/and/Proxysetting$2$1;->this$1:Lcom/and/Proxysetting$2;

    invoke-static {v1}, Lcom/and/Proxysetting$2;->access$0(Lcom/and/Proxysetting$2;)Lcom/and/Proxysetting;

    move-result-object v1

    invoke-static {v1}, Lcom/and/Proxysetting;->access$5(Lcom/and/Proxysetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/and/Proxysetting$2$1;->this$1:Lcom/and/Proxysetting$2;

    invoke-static {v1}, Lcom/and/Proxysetting$2;->access$0(Lcom/and/Proxysetting$2;)Lcom/and/Proxysetting;

    move-result-object v1

    const-class v2, Lcom/and/Proxysetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/and/Proxysetting$2$1;->this$1:Lcom/and/Proxysetting$2;

    invoke-static {v1}, Lcom/and/Proxysetting$2;->access$0(Lcom/and/Proxysetting$2;)Lcom/and/Proxysetting;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/and/Proxysetting;->startActivity(Landroid/content/Intent;)V

    .line 83
    iget-object v1, p0, Lcom/and/Proxysetting$2$1;->this$1:Lcom/and/Proxysetting$2;

    invoke-static {v1}, Lcom/and/Proxysetting$2;->access$0(Lcom/and/Proxysetting$2;)Lcom/and/Proxysetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/and/Proxysetting;->finish()V

    .line 84
    return-void
.end method
