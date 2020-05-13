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
      identifier = { name = "smallcheck-series"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan Path <jan@jpath.de>";
      author = "Danny Navarro <j@dannynavarro.net>";
      homepage = "https://github.com/jdnavarro/smallcheck-series";
      url = "";
      synopsis = "Extra SmallCheck series and utilities";
      description = "Orphan\n@<https://hackage.haskell.org/package/smallcheck-1.1.1/docs/Test-SmallCheck-Series.html#t:Serial Serial>@\ninstances and utilities to create and manipulate\n@<https://hackage.haskell.org/package/smallcheck-1.1.1/docs/Test-SmallCheck-Series.html#t:Series Series>@\nfor common types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }