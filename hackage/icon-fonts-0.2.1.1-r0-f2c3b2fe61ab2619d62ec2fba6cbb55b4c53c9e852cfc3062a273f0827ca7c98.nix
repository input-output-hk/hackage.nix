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
      identifier = { name = "icon-fonts"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rprospero@gmail.com";
      author = "Adam Washington";
      homepage = "";
      url = "";
      synopsis = "Package for handling icon fonts in Haskell";
      description = "This package is intended to provide access to a variety of icon fonts.  Everything is mostly a port of the all-the-icons package for emacs.  The largest difference is that the type system is used to ensure that the user doesn't need to worry about which font produces which icon.        ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }