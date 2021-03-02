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
    flags = { builtin-sqlcipher = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "sqlcipher"; version = "1.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-8, Galois Inc\nCopyright (c) 2016, figo GmbH";
      maintainer = "figo GmbH <package+haskell@figo.io>";
      author = "figo GmbH";
      homepage = "http://github.com/figome/haskell-sqlcipher";
      url = "";
      synopsis = "Haskell binding to sqlcipher";
      description = "Haskell binding to sqlcipher <https://www.zetetic.net/sqlcipher/>.\nThis was forked from sqlite3 library from Galois, Inc. since sqlcipher share most of its API.\n";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        libs = if flags.builtin-sqlcipher
          then [ (pkgs."crypto" or (errorHandler.sysDepError "crypto")) ]
          else [
            (pkgs."sqlcipher" or (errorHandler.sysDepError "sqlcipher"))
            (pkgs."crypto" or (errorHandler.sysDepError "crypto"))
            ];
        buildable = true;
        };
      tests = {
        "sqlite-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sqlcipher" or (errorHandler.buildDepError "sqlcipher"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }