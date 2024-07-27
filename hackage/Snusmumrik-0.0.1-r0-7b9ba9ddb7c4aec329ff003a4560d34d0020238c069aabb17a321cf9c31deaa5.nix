{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Snusmumrik"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Astanin <s.astanin@gmail.com>";
      author = "";
      homepage = "http://bitbucket.org/jetxee/snusmumrik/";
      url = "";
      synopsis = "E-library directory based on FUSE virtual file system.";
      description = "A cyber-anarchist e-library directory based on FUSE virtual file system.\nIt is intended to work with FB2 (FictionBook2) e-book archives in the first\nplace. Other e-book formats and archive layouts may be implemented later.\n\nToday Snusmumrik consists of two utilities, `snus` to index archives and\n`mumrik` to mount library directory at given mount point. Mounted directory\nis organized by author name, by genre and by language.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "snus" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."LibZip" or (errorHandler.buildDepError "LibZip"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ];
          libs = [ (pkgs."zip" or (errorHandler.sysDepError "zip")) ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
          buildable = true;
        };
        "mumrik" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."LibZip" or (errorHandler.buildDepError "LibZip"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."HFuse" or (errorHandler.buildDepError "HFuse"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ];
          libs = [ (pkgs."zip" or (errorHandler.sysDepError "zip")) ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
          buildable = true;
        };
      };
    };
  }