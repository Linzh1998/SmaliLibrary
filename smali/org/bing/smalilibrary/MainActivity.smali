.class public Lorg/bing/smalilibrary/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lorg/bing/smalilibrary/MainActivity;->setContentView(I)V

    .line 16
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 18
    invoke-static {}, Landroid/os/Debug;->startMethodTracing()V

    .line 21
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 24
    const-string v0, "Hello"

    invoke-static {v0}, Lcom/android/smalilib/LogUtil;->d(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 31
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 32
    return-void
.end method

.class public Lcom/gin/launcher/MainActivity;
.super La/a/k/i;
.source ""


# instance fields
.field public btnLogin:Landroid/widget/Button;

.field public et_kami:Landroid/widget/EditText;

.field public p:Landroid/view/View;

.field public q:Landroid/view/WindowManager$LayoutParams;

.field public r:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public s:Landroid/widget/ProgressBar;

.field public tvState:Landroid/widget/TextView;

.field public tv_expire:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, La/a/k/i;-><init>()V

    new-instance v0, Lcom/gin/launcher/MainActivity$d;

    invoke-direct {v0, p0}, Lcom/gin/launcher/MainActivity$d;-><init>(Lcom/gin/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/gin/launcher/MainActivity;->r:Landroid/os/Handler;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "utf-8"

    const/4 v1, 0x0

    if-nez p1, :cond_d

    :try_start_5
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Key为空null"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-object v1

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1d

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Key长度不是16位"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-object v1

    :cond_1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/ECB/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_4c

    :try_start_37
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_40} :catch_41

    return-object p1

    :catch_41
    move-exception p0

    :try_start_42
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_4c

    return-object v1

    :catch_4c
    move-exception p0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_b

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Key为空null"

    :goto_7
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_18

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Key长度不是16位"

    goto :goto_7

    :cond_18
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/ECB/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    :try_start_9
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_48

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_42

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_4c} :catch_4d

    return-object p0

    :catch_4d
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 10

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/gin/launcher/App;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/gin/launcher/MainActivity;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "str"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b3

    const-string v3, "expire"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sig"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2d

    return-void

    :cond_2d
    const-string v5, "seed"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sget v6, Lcom/gin/launcher/App;->d:I

    if-eq v5, v6, :cond_38

    return-void

    :cond_38
    sget v5, Lcom/gin/launcher/App;->e:I

    const/16 v6, 0x7d

    const/16 v7, 0x10

    if-ne v5, v6, :cond_4c

    const-string v5, "data"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/gin/launcher/App;->g:I

    :cond_4c
    sget v5, Lcom/gin/launcher/App;->e:I

    const/16 v6, 0x89

    if-ne v5, v6, :cond_6a

    const-string v5, "data2"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/gin/launcher/App;->g:I

    const-string v5, "data3"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/gin/launcher/App;->h:I

    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lc/c/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lc/c/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "4321"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gin/launcher/MainActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    return-void

    :cond_93
    sput-boolean v2, Lc/c/a/e;->c:Z

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->u()V

    sget-object v0, Lc/c/a/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gin/launcher/MainActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->tv_expire:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "到期时间 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b3
    invoke-virtual {p0, p1}, Lcom/gin/launcher/MainActivity;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gin/launcher/MainActivity;->btnLogin:Landroid/widget/Button;

    if-eq v1, v2, :cond_bb

    goto :goto_bc

    :cond_bb
    const/4 v2, 0x0

    :goto_bc
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bf} :catch_c0

    goto :goto_c4

    :catch_c0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_16
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    :goto_24
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_24

    :cond_30
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3e
    return-void
.end method

.method public a(Z)V
    .registers 5

    const v0, 0x1020002

    if-eqz p1, :cond_31

    invoke-virtual {p0, v0}, La/a/k/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->p()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gin/launcher/MainActivity;->s:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/gin/launcher/MainActivity;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->s:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->s:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_3c

    :cond_31
    invoke-virtual {p0, v0}, La/a/k/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->s:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_3c
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public buyKami()V
    .registers 3

    .line 1
    new-instance v0, Lc/d/a/a/b/a;

    invoke-direct {v0}, Lc/d/a/a/b/a;-><init>()V

    const-string v1, "http://ka.amghkxi.cn/buy.php"

    .line 2
    iput-object v1, v0, Lc/d/a/a/b/c;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lc/d/a/a/b/a;->a()Lc/d/a/a/d/e;

    move-result-object v0

    new-instance v1, Lc/c/a/b;

    invoke-direct {v1, p0}, Lc/c/a/b;-><init>(Lcom/gin/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lc/d/a/a/d/e;->a(Lc/d/a/a/c/a;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/km.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_27
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3b
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->p()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public n()V
    .registers 3

    .line 1
    new-instance v0, Lc/d/a/a/b/a;

    invoke-direct {v0}, Lc/d/a/a/b/a;-><init>()V

    const-string v1, "http://cc.7vsm.cn/hw.php"

    .line 2
    iput-object v1, v0, Lc/d/a/a/b/c;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lc/d/a/a/b/a;->a()Lc/d/a/a/d/e;

    move-result-object v0

    new-instance v1, Lcom/gin/launcher/MainActivity$f;

    invoke-direct {v1, p0}, Lcom/gin/launcher/MainActivity$f;-><init>(Lcom/gin/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lc/d/a/a/d/e;->a(Lc/d/a/a/c/a;)V

    return-void
.end method

.method public o()V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/km.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    return-void

    :cond_25
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    iget-object v1, p0, Lcom/gin/launcher/MainActivity;->et_kami:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_42
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, La/a/k/i;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.excean.maid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_31

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->p()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "需要在分身中运行"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lcom/gin/launcher/MainActivity;->r:Landroid/os/Handler;

    new-instance v0, Lcom/gin/launcher/MainActivity$g;

    invoke-direct {v0, p0}, Lcom/gin/launcher/MainActivity$g;-><init>(Lcom/gin/launcher/MainActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_31
    const-string p1, "bsws5s78s01s2222"

    sput-object p1, Lcom/gin/launcher/App;->c:Ljava/lang/String;

    const-string p1, "tt1234"

    sput-object p1, Lcom/gin/launcher/App;->f:Ljava/lang/String;

    const p1, 0x7f09001c

    invoke-virtual {p0, p1}, La/a/k/i;->setContentView(I)V

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->n()V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    sget-boolean p1, Lcom/gin/launcher/App;->b:Z

    if-nez p1, :cond_134

    sput-boolean v0, Lcom/gin/launcher/App;->b:Z

    new-instance p1, Lc/c/a/a;

    invoke-direct {p1, p0}, Lc/c/a/a;-><init>(Lcom/gin/launcher/MainActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->p()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "35"

    .line 1
    invoke-static {v1}, Lc/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lc/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "android_id"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_c1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_c2

    :cond_c1
    move-object v2, v3

    :goto_c2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_d4
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    array-length v1, p1

    move-object v2, v3

    :goto_ec
    if-ge v4, v1, :cond_11d

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xf

    if-gt v5, v6, :cond_107

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_ec

    :cond_11d
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_121} :catch_122

    goto :goto_12c

    :catch_122
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TAG"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :goto_12c
    sput-object v3, Lc/c/a/e;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->t()V

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->q()V

    :cond_134
    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->o()V

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->u()V

    const p1, 0x7f0700d0

    invoke-virtual {p0, p1}, La/a/k/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "设备码 "

    invoke-static {v1}, Lc/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc/c/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0700b6

    invoke-virtual {p0, p1}, La/a/k/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const v1, 0x7f070060

    invoke-virtual {p0, v1}, La/a/k/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sget-boolean v2, Lc/c/a/e;->e:Z

    if-eqz v2, :cond_16e

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_16e
    sget v2, Lc/c/a/e;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/gin/launcher/MainActivity$h;

    invoke-direct {v2, p0, v1}, Lcom/gin/launcher/MainActivity$h;-><init>(Lcom/gin/launcher/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f070090

    invoke-virtual {p0, p1}, La/a/k/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    new-instance v1, Lcom/gin/launcher/MainActivity$a;

    invoke-direct {v1, p0}, Lcom/gin/launcher/MainActivity$a;-><init>(Lcom/gin/launcher/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    sget p1, Lcom/gin/launcher/App;->e:I

    const/16 v1, 0x7d

    if-ne p1, v1, :cond_19a

    const p1, 0x7f07008e

    goto :goto_1a1

    :cond_19a
    const/16 v1, 0x89

    if-ne p1, v1, :cond_1aa

    const p1, 0x7f07008f

    :goto_1a1
    invoke-virtual {p0, p1}, La/a/k/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1aa
    return-void
.end method

.method public onExit()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.excean.maid/.platformcache/lib_libbbcr11/libtt.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onLogin(Landroid/view/View;)V
    .registers 6

    const-string v0, "1002"

    iget-object v1, p0, Lcom/gin/launcher/MainActivity;->et_kami:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc/c/a/e;->a:Ljava/lang/String;

    sget-object v1, Lc/c/a/e;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string p1, "卡密不能为空!"

    invoke-virtual {p0, p1}, Lcom/gin/launcher/MainActivity;->d(Ljava/lang/String;)V

    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->s()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/gin/launcher/MainActivity;->a(Z)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2c
    const-string v1, "kami"

    sget-object v2, Lc/c/a/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uuid"

    sget-object v2, Lc/c/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->r()I

    move-result v1

    sput v1, Lcom/gin/launcher/App;->d:I

    const-string v1, "seed"

    sget v2, Lcom/gin/launcher/App;->d:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc/c/a/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lc/c/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1234"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gin/launcher/MainActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/gin/launcher/App;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/gin/launcher/MainActivity;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1
    new-instance v0, Lc/d/a/a/b/d;

    invoke-direct {v0}, Lc/d/a/a/b/d;-><init>()V

    const-string v1, "http://ka.amghkxi.cn/login2.php"

    .line 2
    iput-object v1, v0, Lc/d/a/a/b/c;->a:Ljava/lang/String;

    const-string v1, "params"

    .line 3
    iget-object v2, v0, Lc/d/a/a/b/c;->d:Ljava/util/Map;

    if-nez v2, :cond_90

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lc/d/a/a/b/c;->d:Ljava/util/Map;

    :cond_90
    iget-object v2, v0, Lc/d/a/a/b/c;->d:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Lc/d/a/a/b/d;->a()Lc/d/a/a/d/e;

    move-result-object p1

    new-instance v0, Lcom/gin/launcher/MainActivity$c;

    invoke-direct {v0, p0}, Lcom/gin/launcher/MainActivity$c;-><init>(Lcom/gin/launcher/MainActivity;)V

    invoke-virtual {p1, v0}, Lc/d/a/a/d/e;->a(Lc/d/a/a/c/a;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_a1} :catch_a2

    goto :goto_a6

    :catch_a2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a6
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    goto :goto_19

    :cond_4
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_16

    aget p1, p3, p2

    if-nez p1, :cond_16

    const-string p1, "用户申请权限成功"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_19

    :cond_16
    invoke-static {p2}, Ljava/lang/System;->exit(I)V

    :goto_19
    return-void
.end method

.method public onTry(Landroid/view/View;)V
    .registers 6

    const-string v0, "1002"

    const-string v1, "QzfXSLCVKlRpbIMSIb"

    sput-object v1, Lc/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/gin/launcher/MainActivity;->a(Z)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v1, "kami"

    sget-object v2, Lc/c/a/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uuid"

    sget-object v2, Lc/c/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->r()I

    move-result v1

    sput v1, Lcom/gin/launcher/App;->d:I

    const-string v1, "seed"

    sget v2, Lcom/gin/launcher/App;->d:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc/c/a/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lc/c/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1234"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gin/launcher/MainActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/gin/launcher/App;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/gin/launcher/MainActivity;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1
    new-instance v0, Lc/d/a/a/b/d;

    invoke-direct {v0}, Lc/d/a/a/b/d;-><init>()V

    const-string v1, "http://ka.amghkxi.cn/login2.php"

    .line 2
    iput-object v1, v0, Lc/d/a/a/b/c;->a:Ljava/lang/String;

    const-string v1, "params"

    .line 3
    iget-object v2, v0, Lc/d/a/a/b/c;->d:Ljava/util/Map;

    if-nez v2, :cond_77

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lc/d/a/a/b/c;->d:Ljava/util/Map;

    :cond_77
    iget-object v2, v0, Lc/d/a/a/b/c;->d:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Lc/d/a/a/b/d;->a()Lc/d/a/a/d/e;

    move-result-object p1

    new-instance v0, Lcom/gin/launcher/MainActivity$b;

    invoke-direct {v0, p0}, Lcom/gin/launcher/MainActivity$b;-><init>(Lcom/gin/launcher/MainActivity;)V

    invoke-virtual {p1, v0}, Lc/d/a/a/d/e;->a(Lc/d/a/a/c/a;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8d
    return-void
.end method

.method public onWp()V
    .registers 3

    .line 1
    new-instance v0, Lc/d/a/a/b/a;

    invoke-direct {v0}, Lc/d/a/a/b/a;-><init>()V

    const-string v1, "http://ka.amghkxi.cn/wp.php"

    .line 2
    iput-object v1, v0, Lc/d/a/a/b/c;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lc/d/a/a/b/a;->a()Lc/d/a/a/d/e;

    move-result-object v0

    new-instance v1, Lc/c/a/c;

    invoke-direct {v1, p0}, Lc/c/a/c;-><init>(Lcom/gin/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lc/d/a/a/d/e;->a(Lc/d/a/a/c/a;)V

    return-void
.end method

.method public p()Landroid/app/Activity;
    .registers 1

    return-object p0
.end method

.method public q()V
    .registers 3

    .line 1
    new-instance v0, Lc/d/a/a/b/a;

    invoke-direct {v0}, Lc/d/a/a/b/a;-><init>()V

    const-string v1, "http://cc.7vsm.cn/yy.php"

    .line 2
    iput-object v1, v0, Lc/d/a/a/b/c;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lc/d/a/a/b/a;->a()Lc/d/a/a/d/e;

    move-result-object v0

    new-instance v1, Lcom/gin/launcher/MainActivity$e;

    invoke-direct {v1, p0}, Lcom/gin/launcher/MainActivity$e;-><init>(Lcom/gin/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lc/d/a/a/d/e;->a(Lc/d/a/a/c/a;)V

    return-void
.end method

.method public r()I
    .registers 5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const v2, 0x1869f

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const/4 v2, 0x1

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public s()V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->p()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, La/a/k/t;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->p()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_20
    const-string v0, "/data/data/com.excean.maid/.platformcache/lib_libbbcr11/libbbcr112.so"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "/data/data/com.excean.maid/.platformcache/lib_libbbcr11/libbbcr11.so"

    if-nez v1, :cond_3c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3c
    const-string v0, "libbbcr11.so"

    invoke-virtual {p0, v0, v2}, Lcom/gin/launcher/MainActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "libtt2.so"

    const-string v1, "/data/data/com.excean.maid/.platformcache/lib_libbbcr11/libtt.so"

    invoke-virtual {p0, v0, v1}, Lcom/gin/launcher/MainActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t()V
    .registers 4

    invoke-virtual {p0}, Lcom/gin/launcher/MainActivity;->p()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gin/launcher/MainActivity;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->p:Landroid/view/View;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/gin/launcher/MainActivity;->q:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->q:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x258

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0xc8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_3a

    const/16 v1, 0x7d2

    goto :goto_3c

    :cond_3a
    const/16 v1, 0x7f6

    :goto_3c
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->q:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x38

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    return-void
.end method

.method public u()V
    .registers 3

    sget-boolean v0, Lc/c/a/e;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->tvState:Landroid/widget/TextView;

    const-string v1, "已登录"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->tvState:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->btnLogin:Landroid/widget/Button;

    const/4 v1, 0x0

    goto :goto_27

    :cond_16
    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->tvState:Landroid/widget/TextView;

    const-string v1, "未登录"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->tvState:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/gin/launcher/MainActivity;->btnLogin:Landroid/widget/Button;

    const/4 v1, 0x1

    :goto_27
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public watchVideo()V
    .registers 3

    .line 1
    new-instance v0, Lc/d/a/a/b/a;

    invoke-direct {v0}, Lc/d/a/a/b/a;-><init>()V

    const-string v1, "http://ka.amghkxi.cn/video.php"

    .line 2
    iput-object v1, v0, Lc/d/a/a/b/c;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lc/d/a/a/b/a;->a()Lc/d/a/a/d/e;

    move-result-object v0

    new-instance v1, Lc/c/a/d;

    invoke-direct {v1, p0}, Lc/c/a/d;-><init>(Lcom/gin/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Lc/d/a/a/d/e;->a(Lc/d/a/a/c/a;)V

    return-void
.end method
