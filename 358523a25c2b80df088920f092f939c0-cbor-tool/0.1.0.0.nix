{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cbor-tool";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2017 Duncan Coutts,\n2015-2017 Well-Typed LLP,\n2015 IRIS Connect Ltd";
        maintainer = "duncan@community.haskell.org, ben@smart-cactus.org";
        author = "Duncan Coutts";
        homepage = "https://github.com/well-typed/cborg";
        url = "";
        synopsis = "A tool for manipulating CBOR.";
        description = "A tool for dumping and converting CBOR-encoded data.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cbor-tool = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.scientific
              hsPkgs.bytestring
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.cborg
              hsPkgs.cborg-json
            ];
          };
        };
      };
    }