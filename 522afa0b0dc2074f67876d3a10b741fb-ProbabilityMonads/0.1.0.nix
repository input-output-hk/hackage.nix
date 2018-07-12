{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "ProbabilityMonads";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eric Kidd <haskell@randomhacks.net>";
        author = "Eric Kidd <haskell@randomhacks.net>";
        homepage = "";
        url = "";
        synopsis = "Probability distribution monads.";
        description = "Tools for random sampling, explicit enumeration of possible\noutcomes, and applying Bayes' rule.  Highly experimental,\nand subject to change.  In particular, the\nData.Probability API is rather poor and could stand an\noverhaul.";
        buildType = "Custom";
      };
      components = {
        "ProbabilityMonads" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.MaybeT
            hsPkgs.MonadRandom
          ];
        };
      };
    }