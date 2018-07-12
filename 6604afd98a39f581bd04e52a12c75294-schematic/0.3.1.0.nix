{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "schematic";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "denis.redozubov@gmail.com";
        author = "Denis Redozubov";
        homepage = "http://github.com/typeable/schematic";
        url = "";
        synopsis = "JSON-biased spec and validation tool";
        description = "";
        buildType = "Simple";
      };
      components = {
        "schematic" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.hjsonschema
            hsPkgs.mtl
            hsPkgs.regex-tdfa
            hsPkgs.regex-tdfa-text
            hsPkgs.scientific
            hsPkgs.singletons
            hsPkgs.smallcheck
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.validationt
            hsPkgs.vector
            hsPkgs.vinyl
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hjsonschema
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.hspec-discover
              hsPkgs.hspec-smallcheck
              hsPkgs.lens
              hsPkgs.regex-tdfa
              hsPkgs.regex-tdfa-text
              hsPkgs.schematic
              hsPkgs.smallcheck
              hsPkgs.singletons
              hsPkgs.tagged
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.validationt
              hsPkgs.vinyl
            ];
          };
        };
      };
    }