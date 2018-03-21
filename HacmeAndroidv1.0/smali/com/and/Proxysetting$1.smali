.class Lcom/and/Proxysetting$1;
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
    iput-object p1, p0, Lcom/and/Proxysetting$1;->this$0:Lcom/and/Proxysetting;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/and/Proxysetting$1;->this$0:Lcom/and/Proxysetting;

    const-class v2, Lcom/and/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/and/Proxysetting$1;->this$0:Lcom/and/Proxysetting;

    invoke-virtual {v1, v0}, Lcom/and/Proxysetting;->startActivity(Landroid/content/Intent;)V

    .line 57
    iget-object v1, p0, Lcom/and/Proxysetting$1;->this$0:Lcom/and/Proxysetting;

    invoke-virtual {v1}, Lcom/and/Proxysetting;->finish()V

    .line 58
    return-void
.end method
