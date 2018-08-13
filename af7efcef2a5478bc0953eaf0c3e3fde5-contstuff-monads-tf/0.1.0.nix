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
      specVersion = "1.6";
      identifier = {
        name = "contstuff-monads-tf";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "ContStuff instances for monads-tf transformers";
      description = "This package provides contstuff class instances for the monads from\nthe monads-tf package.  This makes using both transformer libraries\nin a single project much more convenient.";
      buildType = "Simple";
    };
    components = {
      "contstuff-monads-tf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.contstuff)
          (hsPkgs.monads-tf)
        ];
      };
    };
  }