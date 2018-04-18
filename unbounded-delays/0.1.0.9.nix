{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unbounded-delays";
          version = "0.1.0.9";
        };
        license = "BSD-3-Clause";
        copyright = "2011-2012 Bas van Dijk & Roel van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
        author = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
        homepage = "https://github.com/basvandijk/unbounded-delays";
        url = "";
        synopsis = "Unbounded thread delays and timeouts";
        description = "The @threadDelay@ and @timeout@ functions from the @base@ library\nuse the bounded @Int@ type for specifying the delay or timeout\nperiod. This packages provides alternatives which use the\nunbounded @Integer@ type.";
        buildType = "Custom";
      };
      components = {
        unbounded-delays = {
          depends  = [ hsPkgs.base ];
        };
      };
    }