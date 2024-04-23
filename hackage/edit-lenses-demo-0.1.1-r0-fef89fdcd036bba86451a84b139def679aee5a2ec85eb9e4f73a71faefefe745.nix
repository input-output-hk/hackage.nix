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
    flags = { gtk = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "edit-lenses-demo"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com";
      author = "Daniel Wagner";
      homepage = "";
      url = "";
      synopsis = "Programs demoing the use of symmetric, stateful edit lenses";
      description = "Some simple demo programs showing ways to use the edit-lenses package.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lens-editor" = {
          depends = if flags.gtk
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
              (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
              (hsPkgs."edit-lenses" or (errorHandler.buildDepError "edit-lenses"))
              (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
              (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }