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
      specVersion = "1.2.3";
      identifier = { name = "bindings-libffi"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-libffi";
      url = "";
      synopsis = "Low level bindings to libffi.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-common" or (errorHandler.buildDepError "bindings-common"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libffi" or (errorHandler.pkgConfDepError "libffi"))
          ];
        buildable = true;
        };
      };
    }