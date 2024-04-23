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
      identifier = { name = "xstatic-th"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tdecacqu@redhat.com";
      author = "Tristan Cacqueray";
      homepage = "https://github.com/TristanCacqueray/haskell-xstatic#readme";
      url = "";
      synopsis = "Automatic generation of XStaticFile";
      description = "Automatic generation of XStaticFile.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xstatic" or (errorHandler.buildDepError "xstatic"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."xstatic" or (errorHandler.buildDepError "xstatic"))
            (hsPkgs."xstatic-th" or (errorHandler.buildDepError "xstatic-th"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          buildable = true;
        };
      };
    };
  }