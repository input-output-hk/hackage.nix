{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "anonymous-sums-tests";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/anonymous-sums";
        url = "";
        synopsis = "QuickCheck functions to accompany the anonymous-sums package";
        description = "Contains generators, coarbitrary functions, and shrinkers to\naccompany the anonymous-sums package.";
        buildType = "Simple";
      };
      components = {
        anonymous-sums-tests = {
          depends  = [
            hsPkgs.base
            hsPkgs.anonymous-sums
            hsPkgs.QuickCheck
          ];
        };
      };
    }