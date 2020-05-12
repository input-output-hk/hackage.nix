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
      identifier = { name = "xtest"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "";
      url = "";
      synopsis = "Thin FFI bindings to X11 XTest library";
      description = "This package provides thin bindings for X11 XTest library.\nFor more info, see XTest documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          ];
        libs = [ (pkgs."Xtst" or (errorHandler.sysDepError "Xtst")) ];
        buildable = true;
        };
      };
    }