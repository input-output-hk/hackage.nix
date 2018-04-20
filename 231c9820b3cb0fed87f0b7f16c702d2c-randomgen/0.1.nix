{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "randomgen";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "awick@haskell.org";
        author = "Adam Wick";
        homepage = "http://galois.com";
        url = "";
        synopsis = "A fast, SMP parallel random data generator";
        description = "A fast, SMP parallel random data generator\n\nTo generate 10G of high quality pseudorandom\ndata, using 4 processors to fill the file:\n\n\$ randomgen \"data\" 10 +RTS -N4\n";
        buildType = "Simple";
      };
      components = {
        exes = {
          randomgen = {
            depends  = [
              hsPkgs.base
              hsPkgs.mersenne-random-pure64
              hsPkgs.bytestring
              hsPkgs.binary
            ];
            libs = [ pkgs.crypto ];
          };
        };
      };
    }