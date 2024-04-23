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
      identifier = { name = "mxnet-dataiter"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/mxnet-dataiter#readme";
      url = "";
      synopsis = "mxnet dataiters";
      description = "Providing the mxnet dataiters as Stream or Conduit";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
          (hsPkgs."mxnet" or (errorHandler.buildDepError "mxnet"))
          (hsPkgs."mxnet-nn" or (errorHandler.buildDepError "mxnet-nn"))
        ];
        buildable = true;
      };
      tests = {
        "streaming" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."mxnet" or (errorHandler.buildDepError "mxnet"))
            (hsPkgs."mxnet-dataiter" or (errorHandler.buildDepError "mxnet-dataiter"))
          ];
          buildable = true;
        };
        "conduit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mxnet" or (errorHandler.buildDepError "mxnet"))
            (hsPkgs."mxnet-dataiter" or (errorHandler.buildDepError "mxnet-dataiter"))
          ];
          buildable = true;
        };
      };
    };
  }