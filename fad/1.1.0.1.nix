{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "fad";
          version = "1.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Barak A. Pearlmutter and Jeffrey Mark Siskind 2008-2009";
        maintainer = "bjorn.buckwalter@gmail.com";
        author = "Barak A. Pearlmutter and Jeffrey Mark Siskind";
        homepage = "http://github.com/bjornbm/fad";
        url = "";
        synopsis = "Forward Automatic Differentiation.";
        description = "Forward Automatic Differentiation via overloading to perform\nnonstandard interpretation that replaces original numeric type with\ncorresponding generalized dual number type.\nExistential type \\\"branding\\\" is used to prevent perturbation confusion.\n**Note: In general we recommend using the ad package maintained by\nEdward Kmett instead of this package.**";
        buildType = "Simple";
      };
      components = {
        fad = {
          depends  = [ hsPkgs.base ];
        };
      };
    }