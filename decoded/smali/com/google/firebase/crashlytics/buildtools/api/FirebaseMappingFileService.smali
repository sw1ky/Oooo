.class public Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;
.super Ljava/lang/Object;
.source "FirebaseMappingFileService.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/api/MappingFileService;


# static fields
.field private static final MAPPING_UPLOAD_REQUEST_FORMAT:Ljava/lang/String; = "%s/v1/project/-/app/%s/upload/java/%s"


# instance fields
.field private final webApi:Lcom/google/firebase/crashlytics/buildtools/api/WebApi;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/buildtools/api/WebApi;)V
    .locals 0
    .param p1, "webApi"    # Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;->webApi:Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    .line 21
    return-void
.end method

.method private static getMappingBuildDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "buildDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, ".crashlytics-mappings-tmp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v0, "workingDir":Ljava/io/File;
    invoke-static {v0}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->verifyDirectory(Ljava/io/File;)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public uploadMappingFile(Ljava/io/File;Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;Lcom/google/firebase/crashlytics/buildtools/Obfuscator;)V
    .locals 7
    .param p1, "mappingFile"    # Ljava/io/File;
    .param p2, "mappingFileId"    # Ljava/lang/String;
    .param p3, "appBuildInfo"    # Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;
    .param p4, "obfuscator"    # Lcom/google/firebase/crashlytics/buildtools/Obfuscator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/io/File;

    .line 33
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->getBuildDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;->getMappingBuildDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .local v0, "gZippedMappingFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Zipping mapping file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 37
    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->gZipFile(Ljava/io/File;Ljava/io/File;)V

    .line 39
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;->webApi:Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    .line 41
    invoke-interface {v4}, Lcom/google/firebase/crashlytics/buildtools/api/WebApi;->getCodeMappingApiUrl()Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->getGoogleAppId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v5, v6, v1

    const/4 v1, 0x2

    aput-object p2, v6, v1

    .line 39
    const-string v1, "%s/v1/project/-/app/%s/upload/java/%s"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 44
    .local v1, "url":Ljava/net/URL;
    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;->webApi:Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    invoke-interface {v2, v1, v0}, Lcom/google/firebase/crashlytics/buildtools/api/WebApi;->uploadFile(Ljava/net/URL;Ljava/io/File;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 47
    return-void

    .line 28
    .end local v0    # "gZippedMappingFile":Ljava/io/File;
    .end local v1    # "url":Ljava/net/URL;
    :cond_0
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/exception/ZeroByteFileException;

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 28
    const-string v2, "Mapping file \'%s\' is zero bytes, skipping upload."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/exception/ZeroByteFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
