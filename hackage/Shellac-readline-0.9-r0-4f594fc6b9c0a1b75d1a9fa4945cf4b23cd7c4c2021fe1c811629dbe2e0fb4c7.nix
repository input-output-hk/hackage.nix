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
      specVersion = "0";
      identifier = { name = "Shellac-readline"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "";
      url = "";
      synopsis = "Readline backend module for Shellac";
      description = "This package provides a Shellac backend based on the GNU readline\nlibrary.  This backend features all the line editing capabilities\nprovided by readline, as well as command completion and command\nhistory features.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
          (hsPkgs."Shellac" or (errorHandler.buildDepError "Shellac"))
          ];
        buildable = true;
        };
      };
    }