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
      identifier = { name = "apigen"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "iphydf@users.noreply.github.com";
      author = "iphydf";
      homepage = "https://toktok.github.io/apigen";
      url = "";
      synopsis = "FFI API generator for several languages";
      description = "Supports a specific way of defining C APIs and generates bindings for various languages for them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."cimple" or (errorHandler.buildDepError "cimple"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "apigen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."apigen" or (errorHandler.buildDepError "apigen"))
            (hsPkgs."cimple" or (errorHandler.buildDepError "cimple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."apigen" or (errorHandler.buildDepError "apigen"))
            (hsPkgs."cimple" or (errorHandler.buildDepError "cimple"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }