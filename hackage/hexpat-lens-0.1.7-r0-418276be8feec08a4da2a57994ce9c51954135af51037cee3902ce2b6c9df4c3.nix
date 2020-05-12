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
      identifier = { name = "hexpat-lens"; version = "0.1.7"; };
      license = "MIT";
      copyright = "(c) 2013, Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson";
      homepage = "https://github.com/tel/hexpat-lens";
      url = "";
      synopsis = "Lenses for Hexpat.";
      description = "A set of lenses for inspecting and manipulating Hexpat data structures.";
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