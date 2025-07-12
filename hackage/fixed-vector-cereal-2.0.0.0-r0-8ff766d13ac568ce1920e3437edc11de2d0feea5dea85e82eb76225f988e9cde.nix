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
      identifier = { name = "fixed-vector-cereal"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Cereal instances for fixed-vector";
      description = "This package contains Cereal instances for data types defined in\nfixed-vector package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
        ];
        buildable = true;
      };
    };
  }