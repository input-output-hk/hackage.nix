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
      specVersion = "2.2";
      identifier = { name = "lens-core"; version = "0.2"; };
      license = "(BSD-2-Clause OR Apache-2.0)";
      copyright = "Copyright (c) 2020 Edward Kmett";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Edward Kmett";
      homepage = "https://github.com/ekmett/lens-core";
      url = "";
      synopsis = "A placeholder for a future lens core package.";
      description = "Cabal 2.2 allows reexported modules, which will eventually\nallow us to consider splitting @lens@ into smaller pieces.\n\nCabal 3.4 allows multiple public sub-libraries in a package\nWhich may be a better plan, to avoid hackage namespace pollution.\n\nI'm claiming this name to avoid rampant namespace confusion\nbetween @lens:core@ and @lens-core@ in the latter scenario and\nto allow progress on the former scenario.\n\nFor now, use @lens@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }