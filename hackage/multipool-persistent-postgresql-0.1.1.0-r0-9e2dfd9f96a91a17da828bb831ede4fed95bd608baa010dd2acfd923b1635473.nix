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
      specVersion = "1.12";
      identifier = {
        name = "multipool-persistent-postgresql";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/multipool-persistent-postgresql#readme";
      url = "";
      synopsis = "Read and write appropriately from both master and replicated postgresql instances.";
      description = "Please see the README on GitHub at <https://github.com/iand675/multipool#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."multipool" or (errorHandler.buildDepError "multipool"))
          (hsPkgs."multipool-persistent" or (errorHandler.buildDepError "multipool-persistent"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."persistent-qq" or (errorHandler.buildDepError "persistent-qq"))
          (hsPkgs."postgresql-common-persistent" or (errorHandler.buildDepError "postgresql-common-persistent"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "multipool-persistent-postgresql-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."multipool" or (errorHandler.buildDepError "multipool"))
            (hsPkgs."multipool-persistent" or (errorHandler.buildDepError "multipool-persistent"))
            (hsPkgs."multipool-persistent-postgresql" or (errorHandler.buildDepError "multipool-persistent-postgresql"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
            (hsPkgs."persistent-qq" or (errorHandler.buildDepError "persistent-qq"))
            (hsPkgs."postgresql-common-persistent" or (errorHandler.buildDepError "postgresql-common-persistent"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }