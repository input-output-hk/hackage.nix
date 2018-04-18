{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "toml";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Whiskey-driven YAML replacement.";
        buildType = "Simple";
      };
      components = {
        toml = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
      };
    }