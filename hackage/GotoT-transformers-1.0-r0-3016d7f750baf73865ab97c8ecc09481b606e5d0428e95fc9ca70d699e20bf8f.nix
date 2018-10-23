{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "GotoT-transformers";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcross@phys.washington.edu>";
      author = "Gregory Crosswhite";
      homepage = "http://github.com/gcross/GotoT-transformers";
      url = "";
      synopsis = "A monad and monadic transformer providing \"goto\" functionality";
      description = "This module provides a monad and a monad transformer that allow the user to transfer the flow of execution from an arbitrary point of a monadic computation to another monadic computation.";
      buildType = "Simple";
    };
    components = {
      "GotoT-transformers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }