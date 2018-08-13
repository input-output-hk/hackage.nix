{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "logict";
        version = "0.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2013, Dan Doel,\nCopyright (c) 2011-2013, Edward Kmett";
      maintainer = "dan.doel@gmail.com";
      author = "Dan Doel";
      homepage = "http://code.haskell.org/~dolio/logict";
      url = "";
      synopsis = "A backtracking logic-programming monad.";
      description = "A continuation-based, backtracking, logic programming monad.\nAn adaptation of the two-continuation implementation found\nin the paper \"Backtracking, Interleaving, and Terminating\nMonad Transformers\" available here:\n<http://okmij.org/ftp/papers/LogicT.pdf>";
      buildType = "Simple";
    };
    components = {
      "logict" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }