{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ethereum-rlp";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jamshidnh@gmail.com";
        author = "Jamshid";
        homepage = "";
        url = "";
        synopsis = "Ethereum Recursive Length Prefix Encoding";
        description = "RLP, as described in the Ethereum Yellowpaper";
        buildType = "Simple";
      };
      components = {
        "ethereum-rlp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.ansi-wl-pprint
          ];
        };
        tests = {
          "test-rlp" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.base16-bytestring
              hsPkgs.ansi-wl-pprint
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }