{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "cassava-conduit";
          version = "0.4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014-2017 Dom De Re";
        maintainer = "Dom De Re";
        author = "Dom De Re";
        homepage = "https://github.com/domdere/cassava-conduit";
        url = "";
        synopsis = "Conduit interface for cassava package";
        description = "Conduit interface for cassava package\n\nPRs welcome.";
        buildType = "Simple";
      };
      components = {
        cassava-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.cassava
            hsPkgs.conduit
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
        tests = {
          quickcheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cassava
              hsPkgs.conduit
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.cassava-conduit
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.cassava-conduit
              hsPkgs.criterion
            ];
          };
        };
      };
    }