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
      identifier = { name = "elenco-albero"; version = "1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Imants Cekusins";
      author = "Imants Cekusins";
      homepage = "https://bitbucket.org/ciezbit/elenco-albero";
      url = "";
      synopsis = "make tree from a list";
      description = "convert a flat list of nodes with\noptional parents to a (usually: if\nany nodes are assigned to parents)\nshorter list of nodes with nested children.\nPossible application: tree-like menu\nin web apps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }