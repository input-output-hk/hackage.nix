{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-yak";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright (c) Theodore Lief Gannon, 2015";
        maintainer = "tanuki@gmail.com";
        author = "Theodore Lief Gannon";
        homepage = "https://github.com/tejon/aeson-yak";
        url = "";
        synopsis = "Handle JSON that may or may not be a list, or exist";
        description = "According to the standard promoted by Schema.org, the following are all\nlegally the same object:\n\\{ field: [data1, data2] }\n\\{ field: data }\n\\{ }\nThis library provides an intermediary data type and supporting functions to\nhelp aeson parse and output JSON conforming to this frustrating standard.";
        buildType = "Simple";
      };
      components = {
        aeson-yak = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
          ];
        };
      };
    }