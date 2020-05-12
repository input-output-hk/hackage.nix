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
      identifier = { name = "crf-chain1"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "2012-2019 IPI PAN, Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/crf-chain1#readme";
      url = "";
      synopsis = "First-order, linear-chain conditional random fields";
      description = "Please see the README on GitHub at <https://github.com/kawu/crf-chain1#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-lens-light" or (errorHandler.buildDepError "data-lens-light"))
          (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
          (hsPkgs."monad-codec" or (errorHandler.buildDepError "monad-codec"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."sgd" or (errorHandler.buildDepError "sgd"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-binary-instances" or (errorHandler.buildDepError "vector-binary-instances"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          ];
        buildable = true;
        };
      };
    }