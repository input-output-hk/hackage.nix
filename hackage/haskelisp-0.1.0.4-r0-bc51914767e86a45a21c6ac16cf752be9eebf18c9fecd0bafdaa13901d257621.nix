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
      identifier = { name = "haskelisp"; version = "0.1.0.4"; };
      license = "GPL-3.0-only";
      copyright = "2016 Takenari Shinohara";
      maintainer = "takenari.shinohara@gmail.com";
      author = "Takenari Shinohara";
      homepage = "http://github.com/githubuser/haskelisp#readme";
      url = "";
      synopsis = "Write Emacs module in Haskell, using Emacs 25's Dynamic Module feature";
      description = "Write Emacs module in Haskell, using Emacs 25's Dynamic Module feature.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }