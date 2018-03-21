.class Lcom/and/homeActivity$6;
.super Ljava/lang/Object;
.source "homeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/and/homeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/and/homeActivity;


# direct methods
.method constructor <init>(Lcom/and/homeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/and/homeActivity$6;->this$0:Lcom/and/homeActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/and/homeActivity$6;->this$0:Lcom/and/homeActivity;

    invoke-virtual {v0}, Lcom/and/homeActivity;->finish()V

    .line 110
    return-void
.end method
