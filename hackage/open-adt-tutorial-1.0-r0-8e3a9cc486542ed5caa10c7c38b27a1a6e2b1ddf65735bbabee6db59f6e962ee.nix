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
      identifier = { name = "open-adt-tutorial"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Jordan Woehr";
      maintainer = "Jordan Woehr";
      author = "";
      homepage = "https://github.com/woehr/open-adt";
      url = "";
      synopsis = "Open algebraic data type examples.";
      description = "Example usage of open-adt with haddock documentation. Read the\n\"Data.OpenADT.Tutorial\" module from top to bottom.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
          (hsPkgs."open-adt" or (errorHandler.buildDepError "open-adt"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "open-adt-tutorial" = {
          depends = [
            (hsPkgs."open-adt-tutorial" or (errorHandler.buildDepError "open-adt-tutorial"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }