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
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "rocksdb-haskell-jprupp"; version = "2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jean-Pierre Rupp <jprupp@protonmail.ch>";
      author = "";
      homepage = "https://github.com/jprupp/rocksdb-haskell#readme";
      url = "";
      synopsis = "Haskell bindings for RocksDB";
      description = "See README at <https://github.com/jprupp/rocksdb-haskell#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        libs = [ (pkgs."rocksdb" or (errorHandler.sysDepError "rocksdb")) ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."rocksdb-haskell-jprupp" or (errorHandler.buildDepError "rocksdb-haskell-jprupp"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          buildable = true;
        };
      };
    };
  }