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
      specVersion = "2.4";
      identifier = { name = "morley-prelude"; version = "0.1.0.4"; };
      license = "AGPL-3.0-or-later";
      copyright = "2019 Tocqueville Group";
      maintainer = "john.c.burnham@gmail.com";
      author = "camlCase, Serokell, Tocqueville Group";
      homepage = "https://gitlab.com/tezos-standards/morley";
      url = "";
      synopsis = "A custom prelude used in Morley";
      description = "A custom prelude used in Morley. It re-exports the Universum prelude\nand makes some tiny changes.";
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