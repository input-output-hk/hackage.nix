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
      identifier = { name = "monad-par"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow 2011";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Simon Marlow";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "A library for parallel programming based on a monad";
      description = "This library offers an alternative parallel programming\nAPI to that provided by the @parallel@ package.\nThe 'Par' monad allows the simple description of\nparallel computations, and can be used to add\nparallelism to pure Haskell code.  The basic API\nis straightforward: the monad supports forking\nand simple communication in terms of 'IVar's.\nThe library comes with an efficient work-stealing\nimplementation, but the internals are also\nexposed so that you can build your own scheduler\nif necessary.\nExamples of use can be found in the examples/ directory\nof the source package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
        buildable = true;
        };
      };
    }