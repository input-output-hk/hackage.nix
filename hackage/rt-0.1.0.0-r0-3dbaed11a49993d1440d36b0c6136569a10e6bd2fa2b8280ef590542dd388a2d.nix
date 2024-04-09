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
      specVersion = "3.0";
      identifier = { name = "rt"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2024-present Jamie Willis";
      maintainer = "j.willis19@imperial.ac.uk";
      author = "Jamie Willis";
      homepage = "https://github.com/j-mie6/reference-threads";
      url = "";
      synopsis = "A more fine-grained version of state threads (ST)";
      description = "Introduces the RT monad, which can be used to have more fine-grained STRefs without an extra parameter\nin the monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }