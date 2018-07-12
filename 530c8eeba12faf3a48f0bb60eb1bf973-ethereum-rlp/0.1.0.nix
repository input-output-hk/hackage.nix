{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ethereum-rlp";
          version = "0.1.0";
        };
        license = "Apache-2.0";
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
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.ansi-wl-pprint
            hsPkgs.base
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.ethereum-rlp
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.base
            ];
          };
        };
      };
    }