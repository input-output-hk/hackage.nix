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
      identifier = { name = "csound-sampler"; version = "0.0.10.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/csound-sampler";
      url = "";
      synopsis = "A musical sampler based on Csound";
      description = "A simple sampler based on the library csound-expression. We can define loops\nand patterns of samples. An intricate pattern of sound is just few strokes away.\nThe library works in the interpreter. We can listen the results right in the ghci.\nHere is the tutorial <https://github.com/anton-k/csound-sampler>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."csound-expression" or (errorHandler.buildDepError "csound-expression"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }