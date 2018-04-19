{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmt";
          version = "0.12";
        };
        license = "LicenseRef-GPL";
        copyright = "Rohan Drape, 2006-2012";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hmt";
        url = "";
        synopsis = "Haskell Music Theory";
        description = "Haskell music theory library";
        buildType = "Simple";
      };
      components = {
        hmt = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.colour
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hcg-minus
            hsPkgs.html-minimalist
            hsPkgs.logict
            hsPkgs.multiset-comb
            hsPkgs.parsec
            hsPkgs.permutation
            hsPkgs.primes
            hsPkgs.split
            hsPkgs.utf8-string
            hsPkgs.xml
          ];
        };
      };
    }