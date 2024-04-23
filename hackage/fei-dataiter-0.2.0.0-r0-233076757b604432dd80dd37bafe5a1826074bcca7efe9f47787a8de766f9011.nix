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
      identifier = { name = "fei-dataiter"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/fei-dataiter#readme";
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
          (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
          (hsPkgs."fei-nn" or (errorHandler.buildDepError "fei-nn"))
        ];
        buildable = true;
      };
      exes = {
        "mxnet-dataiter-gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
          ];
          libs = [ (pkgs."mxnet" or (errorHandler.sysDepError "mxnet")) ];
          buildable = true;
        };
      };
      tests = {
        "streaming" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-dataiter" or (errorHandler.buildDepError "fei-dataiter"))
          ];
          buildable = true;
        };
        "conduit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."fei-base" or (errorHandler.buildDepError "fei-base"))
            (hsPkgs."fei-dataiter" or (errorHandler.buildDepError "fei-dataiter"))
          ];
          buildable = true;
        };
      };
    };
  }