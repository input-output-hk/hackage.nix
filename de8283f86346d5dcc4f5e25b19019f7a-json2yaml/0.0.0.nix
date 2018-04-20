{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "json2yaml";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/json2yaml/tree/master";
        url = "";
        synopsis = "Utility to convert a file from JSON to YAML format.";
        description = "HsSyck cannot parse JSON files produced by the json\npackage. This is a simple utility to connect the two\nlibraries.";
        buildType = "Simple";
      };
      components = {
        exes = {
          json2yaml = {
            depends  = [
              hsPkgs.base
              hsPkgs.utf8-string
              hsPkgs.json
              hsPkgs.HsSyck
            ];
          };
        };
      };
    }