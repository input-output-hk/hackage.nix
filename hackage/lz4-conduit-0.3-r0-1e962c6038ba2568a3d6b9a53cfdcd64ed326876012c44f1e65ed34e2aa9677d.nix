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
      specVersion = "1.10";
      identifier = { name = "lz4-conduit"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sven@sven.cc";
      author = "Sven Mattsen";
      homepage = "https://github.com/bigmac2k/lz4-conduit";
      url = "";
      synopsis = "LZ4 compression for conduits";
      description = "lz4 compression for conduits, using https://github.com/lz4/lz4";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
      exes = {
        "LZ4" = {
          depends = [
            (hsPkgs."lz4-conduit" or (errorHandler.buildDepError "lz4-conduit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
          buildable = true;
        };
      };
      tests = {
        "props" = {
          depends = [
            (hsPkgs."lz4-conduit" or (errorHandler.buildDepError "lz4-conduit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-arbitrary" or (errorHandler.buildDepError "bytestring-arbitrary"))
          ];
          buildable = true;
        };
      };
    };
  }