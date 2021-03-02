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
      specVersion = "1.0";
      identifier = { name = "SDL-mpeg"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2008, Audrey Tang";
      maintainer = "Audrey Tang";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "Binding to the SMPEG library";
      description = "Binding to the SMPEG library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          ];
        libs = [ (pkgs."smpeg" or (errorHandler.sysDepError "smpeg")) ];
        buildable = true;
        };
      };
    }