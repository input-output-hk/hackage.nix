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
      specVersion = "2.0";
      identifier = { name = "morley-prelude"; version = "0.4.0"; };
      license = "MIT";
      copyright = "2019-2021 Tocqueville Group";
      maintainer = "Serokell <hi@serokell.io>";
      author = "camlCase, Serokell, Tocqueville Group";
      homepage = "https://gitlab.com/morley-framework/morley";
      url = "";
      synopsis = "A custom prelude used in Morley";
      description = "A custom prelude used in Morley. It re-exports the Universum prelude and makes some tiny changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
          (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
          ];
        buildable = true;
        };
      };
    }