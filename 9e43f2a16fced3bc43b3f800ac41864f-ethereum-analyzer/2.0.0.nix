{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ethereum-analyzer";
          version = "2.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "k_@berkeley.edu";
        author = "Kevin Chen";
        homepage = "https://github.com/ethereumK/ethereum-analyzer";
        url = "";
        synopsis = "A Ethereum contract analyzer.";
        description = "A Ethereum contract analyzer.";
        buildType = "Simple";
      };
      components = {
        ethereum-analyzer = {
          depends  = [
            hsPkgs.base
            hsPkgs.GenericPretty
            hsPkgs.aeson
            hsPkgs.bimap
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.ethereum-analyzer-deps
            hsPkgs.extra
            hsPkgs.fgl
            hsPkgs.graphviz
            hsPkgs.hexstring
            hsPkgs.hoopl
            hsPkgs.pretty
            hsPkgs.protolude
            hsPkgs.split
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.wl-pprint-text
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.GenericPretty
              hsPkgs.bytestring
              hsPkgs.ethereum-analyzer
              hsPkgs.ethereum-analyzer-deps
              hsPkgs.extra
              hsPkgs.hoopl
              hsPkgs.hspec
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.wl-pprint-text
            ];
          };
        };
      };
    }