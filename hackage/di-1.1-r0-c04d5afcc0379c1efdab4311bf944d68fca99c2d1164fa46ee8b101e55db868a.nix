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
      identifier = { name = "di"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2017-2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "Typeful hierarchical structured logging using di, mtl and df1.";
      description = "Typeful hierarchical structured logging using di, mtl and df1.\n\nThis is meta-package bringing in together things from the @di-core@,\n@di-monad@, @di-handle@ and @di-df1@ libraries.\n\nSee the \"Di\" module for more documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."df1" or (errorHandler.buildDepError "df1"))
          (hsPkgs."di-core" or (errorHandler.buildDepError "di-core"))
          (hsPkgs."di-df1" or (errorHandler.buildDepError "di-df1"))
          (hsPkgs."di-handle" or (errorHandler.buildDepError "di-handle"))
          (hsPkgs."di-monad" or (errorHandler.buildDepError "di-monad"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      };
    }