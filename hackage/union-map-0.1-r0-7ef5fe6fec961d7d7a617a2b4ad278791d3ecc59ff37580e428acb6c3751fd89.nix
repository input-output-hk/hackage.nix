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
      identifier = { name = "union-map"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "minpou.primer@gmail.com";
      author = "Yu Fukuzawa";
      homepage = "http://github.com/minpou/union-map";
      url = "";
      synopsis = "Heterogeneous map by open unions.";
      description = "Heterogeneous map implementation, not requires IO and Typeable likes";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
        ];
        buildable = true;
      };
    };
  }