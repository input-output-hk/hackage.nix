{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "contstuff-monads-tf";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "ContStuff instances for monads-tf transformers (deprecated)";
      description = "PLEASE NOTE:  This package is deprecated in favor of\ncontstuff-transformers, which generalizes to all transformers-based\nlibraries.\nThis package provides contstuff transformer class instances for the\nmonad transformers from the monads-tf package as well as monads-tf\ntransformer class instances for the monad transformers from\ncontstuff.  This makes using both transformer libraries in a single\nproject much more convenient as you get along with a single set of\nlifting functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.contstuff)
          (hsPkgs.monads-tf)
        ];
      };
    };
  }