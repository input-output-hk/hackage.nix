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
      identifier = { name = "generator"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yairchu@gmail.com";
      author = "Yair Chuchem";
      homepage = "http://github.com/yairchu/generator/tree";
      url = "";
      synopsis = "Python-generators notation for creation of monadic lists";
      description = "Consumer and Generator monad transformers to create\nand iterate 'ListT's in a manner similar to\nPython generators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
          (hsPkgs."List" or (errorHandler.buildDepError "List"))
        ];
        buildable = true;
      };
    };
  }