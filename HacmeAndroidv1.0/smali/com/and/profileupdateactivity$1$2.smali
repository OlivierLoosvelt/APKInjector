.class Lcom/and/profileupdateactivity$1$2;
.super Ljava/lang/Object;
.source "profileupdateactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/profileupdateactivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/and/profileupdateactivity$1;


# direct methods
.method constructor <init>(Lcom/and/profileupdateactivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/profileupdateactivity$1$2;->this$1:Lcom/and/profileupdateactivity$1;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/and/profileupdateactivity$1$2;->this$1:Lcom/and/profileupdateactivity$1;

    invoke-static {v0}, Lcom/and/profileupdateactivity$1;->access$0(Lcom/and/profileupdateactivity$1;)Lcom/and/profileupdateactivity;

    move-result-object v0

    invoke-static {v0}, Lcom/and/profileupdateactivity;->access$8(Lcom/and/profileupdateactivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 102
    return-void
.end method
