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
    flags = { haste-inst = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sneathlane-haste"; version = "2"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "jason@sneathlane.com";
      author = "Jason Priestley";
      homepage = "http://sneathlane.com";
      url = "";
      synopsis = "A compositional web UI library, which draws to a Canvas element";
      description = "A simple library for construction UIs in the browser. Uses Haste to compile to JS and a Canvas element to draw the UI to the page. A UI can be written using ordinary Monadic combinators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.haste-inst
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haste-lib" or (errorHandler.buildDepError "haste-lib"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haste-compiler" or (errorHandler.buildDepError "haste-compiler"))
          ];
        buildable = true;
      };
    };
  }