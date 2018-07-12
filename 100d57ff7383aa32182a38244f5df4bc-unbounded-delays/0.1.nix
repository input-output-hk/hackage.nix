{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unbounded-delays";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2011 Bas van Dijk & Roel van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
        author = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Unbounded thread delays and timeouts";
        description = "The @threadDelay@ and @timeout@ functions from the @base@ library\nuse the bounded @Int@ type for specifying the delay or timeout\nperiod. This packages provides alternatives which use the\nunbounded @Integer@ type.";
        buildType = "Simple";
      };
      components = {
        "unbounded-delays" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }