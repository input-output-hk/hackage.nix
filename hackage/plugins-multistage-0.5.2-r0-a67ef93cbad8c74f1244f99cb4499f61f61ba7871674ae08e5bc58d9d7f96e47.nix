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
      identifier = { name = "plugins-multistage"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012-2014, Anders Persson";
      maintainer = "Anders Persson <anders.cj.persson@gmail.com>";
      author = "Anders Persson <anders.cj.persson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Dynamic linking for embedded DSLs with staged compilation";
      description = "Dynamic compilation, linking and loading of functions in\nstaged languages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
        ];
        buildable = true;
      };
    };
  }