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
      specVersion = "1.2";
      identifier = { name = "bpann"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Robert Steuck 2011";
      maintainer = "robert.steuck@gmail.com";
      author = "Robert Steuck";
      homepage = "";
      url = "";
      synopsis = "backpropagation neuronal network";
      description = "- fully-connected multylayer perceptron\n- uses bias neurons\n- creation of randomly initialized networks of arbitrary size\n- easy (de-)serialization";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
    };
  }