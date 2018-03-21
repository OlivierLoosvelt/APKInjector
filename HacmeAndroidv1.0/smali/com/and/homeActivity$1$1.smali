.class Lcom/and/homeActivity$1$1;
.super Ljava/lang/Object;
.source "homeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/homeActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/and/homeActivity$1;


# direct methods
.method constructor <init>(Lcom/and/homeActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/homeActivity$1$1;->this$1:Lcom/and/homeActivity$1;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/and/homeActivity$1$1;->this$1:Lcom/and/homeActivity$1;

    invoke-static {v0}, Lcom/and/homeActivity$1;->access$0(Lcom/and/homeActivity$1;)Lcom/and/homeActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/and/homeActivity;->access$1(Lcom/and/homeActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 61
    return-void
.end method
