{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usecdar = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "aern2-mp"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2019 Michal Konecny";
      maintainer = "Michal Konecny <mikkonecny@gmail.com>";
      author = "Michal Konecny";
      homepage = "https://github.com/michalkonecny/aern2";
      url = "";
      synopsis = "Multi-precision ball (interval) arithmetic";
      description = "This package provides the following types:\n\n* Dyadic:  variable-precision floats with exact ring operations\n\n* MPBall: float ± error bound with field & elementary interval-like operations\n\nThe types have instances of both <https://hackage.haskell.org/package/mixed-types-num MixedTypeNumPrelude>\ntype classes as well as with traditional Prelude type classes.\n\nThere is a plan to add an Integer-only backend so that aern2-mp can\nbe used without MPFR.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.integer-logarithms)
          (hsPkgs.convertible)
          (hsPkgs.regex-tdfa)
          (hsPkgs.hspec)
          (hsPkgs.QuickCheck)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.mixed-types-num)
          ] ++ (if flags.usecdar
          then [ (hsPkgs.cdar) ]
          else [ (hsPkgs.rounded) ]);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aern2-mp)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }