{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "bkr"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Michael Smietana";
      maintainer = "Michael Smietana <michael@smietana.se>";
      author = "Michael Smietana <michael@smietana.se>";
      homepage = "https://github.com/ingesson/bkr";
      url = "";
      synopsis = "Backup utility for backing up to cloud storage services (S3 only right now)";
      description = "Easy to use backup tool utilizing cloud services (S3 only right now) as backup storage.\nbkr is in very early development stage. Right now bkr is rather a synchronization then a backup utility. bkr uploads files from wanted folders to a remote storage service, next time it runs it checks for changes and uploads new or altered files but does not keep copies of altered files (hence rather synchronization then backup). For more information about installation and setup, release notes and more please visit https:\\/\\/github.com\\/ingesson\\/bkr. All suggestions and bug reports are of course more then welcome.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.HDBC-sqlite3)
          (hsPkgs.hslogger)
          (hsPkgs.MissingH)
          (hsPkgs.pureMD5)
          (hsPkgs.strict)
          (hsPkgs.bytestring)
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.4") [
          (hsPkgs.directory)
          (hsPkgs.aws)
          (hsPkgs.haskell98)
          (hsPkgs.unix)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
          (hsPkgs.filepath)
          (hsPkgs.random)
          (hsPkgs.HDBC)
          (hsPkgs.http-conduit)
          ]) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).gt "7.2") [
          (hsPkgs.directory)
          (hsPkgs.aws)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
          (hsPkgs.filepath)
          (hsPkgs.random)
          (hsPkgs.HDBC)
          (hsPkgs.http-conduit)
          ];
        };
      exes = {
        "bkr" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.hslogger)
            (hsPkgs.MissingH)
            (hsPkgs.pureMD5)
            (hsPkgs.strict)
            (hsPkgs.bytestring)
            ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.4") [
            (hsPkgs.directory)
            (hsPkgs.aws)
            (hsPkgs.haskell98)
            (hsPkgs.unix)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.HDBC)
            (hsPkgs.http-conduit)
            ]) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).gt "7.2") [
            (hsPkgs.directory)
            (hsPkgs.aws)
            (hsPkgs.unix)
            (hsPkgs.utf8-string)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.HDBC)
            (hsPkgs.http-conduit)
            ];
          };
        };
      };
    }