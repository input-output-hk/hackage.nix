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
      specVersion = "1.6";
      identifier = { name = "th-sccs"; version = "0.0.0.20110723"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Nicolas Frisby";
      maintainer = "nicolas.frisby@gmail.com";
      author = "nicolas.frisby@gmail.com";
      homepage = "";
      url = "";
      synopsis = "Binding group analysis in Template Haskell";
      description = "th-sccs exposes Template Haskell functions for computing the\nmutually recursive binding groups for data and type synonym\ndeclarations, excluding those that use type families.\nThis includes a convenient type class for gathering the type\nconstructor names that occur within a TH @Info@\\/@Dec@\\/@Type@\nvalue.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }