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
      specVersion = "1.18";
      identifier = { name = "morley-prelude"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2019 Tocqueville Group";
      maintainer = "john@camlcase.io";
      author = "camlCase, Serokell";
      homepage = "https://gitlab.com/camlcase-dev/morley";
      url = "";
      synopsis = "A custom prelude used in Morley";
      description = "";
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