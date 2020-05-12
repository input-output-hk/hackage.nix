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
      identifier = { name = "hexpat-lens"; version = "0.0.6"; };
      license = "MIT";
      copyright = "(c) 2013, Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson";
      homepage = "";
      url = "";
      synopsis = "Lenses for Hexpat.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."hexpat-tagsoup" or (errorHandler.buildDepError "hexpat-tagsoup"))
          ];
        buildable = true;
        };
      };
    }