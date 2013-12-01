.class public Lcom/android/gallery3d/ui/AlbumLabelMaker;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;,
        Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = 0x60000000

.field private static final BORDER_SIZE:I = 0x1

.field private static final FONT_COLOR_COUNT:I = -0x7f000001

.field private static final FONT_COLOR_TITLE:I = -0x1


# instance fields
.field private mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

.field private final mCameraIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mContext:Landroid/content/Context;

.field private final mCountPaint:Landroid/text/TextPaint;

.field private mLabelWidth:I

.field private final mLocalSetIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mMtpIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mPicasaIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mTitlePaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V
    .locals 3
    .parameter "context"
    .parameter "spec"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 60
    iget v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    .line 61
    iget v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    const v1, -0x7f000001

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;

    .line 63
    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v1, 0x7f020031

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLocalSetIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 64
    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v1, 0x7f020032

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mPicasaIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 65
    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v1, 0x7f020030

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mCameraIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 66
    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v1, 0x7f020033

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mMtpIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getOverlayAlbumIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumLabelMaker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/data/BitmapPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V
    .locals 2
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "text"
    .parameter "lengthLimit"
    .parameter "p"

    .prologue
    .line 134
    monitor-enter p5

    .line 135
    int-to-float v0, p4

    :try_start_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p5, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 137
    int-to-float v0, p1

    invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p0, p3, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 138
    monitor-exit p5

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBorderSize()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method private getOverlayAlbumIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "sourceType"

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mCameraIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLocalSetIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mMtpIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mPicasaIcon:Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextPaint(IIZ)Landroid/text/TextPaint;
    .locals 5
    .parameter "textSize"
    .parameter "color"
    .parameter "isBold"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 89
    .local v0, paint:Landroid/text/TextPaint;
    int-to-float v1, p0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 90
    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 91
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 92
    const/high16 v1, 0x4000

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 93
    if-eqz p2, :cond_0

    .line 94
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 96
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clearRecycledLabels()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/BitmapPool;->clear()V

    .line 215
    :cond_0
    return-void
.end method

.method public recycleLabel(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 211
    return-void
.end method

.method public requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "title"
    .parameter "count"
    .parameter "sourceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;-><init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public declared-synchronized setLabelWidth(I)V
    .locals 5
    .parameter "width"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I

    .line 121
    const/4 v0, 0x2

    .line 122
    .local v0, borders:I
    new-instance v1, Lcom/android/gallery3d/data/BitmapPool;

    add-int v2, p1, v0

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v3, v3, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v3, v0

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/data/BitmapPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    .end local v0           #borders:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
