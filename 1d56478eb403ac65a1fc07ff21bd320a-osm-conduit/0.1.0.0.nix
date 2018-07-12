{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "osm-conduit";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Przemysław Kopański";
        maintainer = "P.Kopanski@stud.elka.pw.edu.pl";
        author = "Przemysław Kopański";
        homepage = "http://github.com/przembot/osm-conduit#readme";
        url = "";
        synopsis = "Parse and operate on OSM data in efficient way";
        description = "Convenient *.osm parsing. See \"Data.Conduit.OSM\" or README.md";
        buildType = "Simple";
      };
      components = {
        "osm-conduit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.xml-types
            hsPkgs.xml-conduit
            hsPkgs.resourcet
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.exceptions
          ];
        };
        tests = {
          "osm-conduit-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.osm-conduit
              hsPkgs.conduit
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.exceptions
              hsPkgs.resourcet
              hsPkgs.xml-conduit
              hsPkgs.xml-types
            ];
          };
        };
      };
    }