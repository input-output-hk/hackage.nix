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
      specVersion = "1.2";
      identifier = { name = "DysFRP-Craftwerk"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marek Materzok";
      author = "Marek Materzok";
      homepage = "https://github.com/tilk/DysFRP";
      url = "";
      synopsis = "dysFunctional Reactive Programming on Craftwerk";
      description = "Simple Craftwerk bindings for DysFRP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."craftwerk" or (errorHandler.buildDepError "craftwerk"))
          (hsPkgs."craftwerk-gtk" or (errorHandler.buildDepError "craftwerk-gtk"))
          (hsPkgs."DysFRP" or (errorHandler.buildDepError "DysFRP"))
          (hsPkgs."DysFRP-Cairo" or (errorHandler.buildDepError "DysFRP-Cairo"))
          ];
        buildable = true;
        };
      };
    }