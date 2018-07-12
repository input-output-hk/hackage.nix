{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vfr-waypoints";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
        maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
        author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
        homepage = "https://github.com/qfpl/vfr-waypoints";
        url = "";
        synopsis = "VFR waypoints, as published in the AIP (ERSA)";
        description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nVFR waypoints, as published in the AIP (ERSA)";
        buildType = "Simple";
      };
      components = {
        "vfr-waypoints" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.containers
            hsPkgs.fuzzy
            hsPkgs.monoid-subclasses
          ];
        };
        exes = {
          "vfr-waypoints" = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.fuzzy
              hsPkgs.optparse-applicative
              hsPkgs.vfr-waypoints
            ];
          };
        };
      };
    }