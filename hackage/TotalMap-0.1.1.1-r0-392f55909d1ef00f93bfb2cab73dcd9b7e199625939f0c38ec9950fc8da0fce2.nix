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
      identifier = { name = "TotalMap"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "ed@wastell.co.uk";
      author = "Ed Wastell";
      homepage = "";
      url = "";
      synopsis = "A total map datatype";
      description = "Provides a datatype representing a total map using an enum type as keys";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          ];
        buildable = true;
        };
      tests = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."TotalMap" or (errorHandler.buildDepError "TotalMap"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
            (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            ];
          buildable = true;
          };
        };
      };
    }