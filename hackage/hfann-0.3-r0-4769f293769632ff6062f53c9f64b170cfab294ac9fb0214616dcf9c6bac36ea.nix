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
    flags = { test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hfann"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Olivier Boudry 2008, David Himmelstrup 2011";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "David Himmelstrup, Olivier Boudry";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to the FANN library";
      description = "hfann is a Haskell binding to the Fast Artificial Neural\nNetwork (FANN) library <http://leenissen.dk/fann/>. It\nprovides functions to easily create, train, test and use\nArtificial Neural Networks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."doublefann" or (errorHandler.sysDepError "doublefann"))
        ];
        buildable = true;
      };
      exes = {
        "HFANNTest" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = [
            (pkgs."doublefann" or (errorHandler.sysDepError "doublefann"))
          ];
          buildable = if flags.test then true else false;
        };
      };
    };
  }