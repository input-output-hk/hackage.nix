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
      specVersion = "1.8";
      identifier = { name = "hoe"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2015, Hideyuki Tanaka";
      maintainer = "tanaka.hideyuki@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/tanakh/hoe";
      url = "";
      synopsis = "hoe: Haskell One-liner Evaluator";
      description = "@hoe@ is AWK like text processor.\nThis can evaluate scripts in various ways depending on types.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hoe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }