{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "continue";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "Control";
      description = "This library implements a monad transformer for suspendable\ncomputations, similar and related to free comonads.  It allows to\nwrite continuation-based web frameworks, command line applications\nand similar interfaces.";
      buildType = "Simple";
    };
    components = {
      "continue" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.semigroupoids)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }