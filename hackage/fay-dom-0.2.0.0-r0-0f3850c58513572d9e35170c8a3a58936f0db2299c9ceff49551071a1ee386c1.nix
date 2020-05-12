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
      specVersion = "1.8";
      identifier = { name = "fay-dom"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Bergmark";
      author = "Adam Bergmark";
      homepage = "https://github.com/faylang/fay-dom";
      url = "";
      synopsis = "DOM FFI wrapper library for Fay";
      description = "DOM FFI wrapper library for Fay.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."fay-base" or (errorHandler.buildDepError "fay-base"))
          ];
        buildable = true;
        };
      };
    }