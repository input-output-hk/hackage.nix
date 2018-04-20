{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ascii";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/ascii";
        url = "";
        synopsis = "Type-safe, bytestring-based ASCII values.";
        description = "Type-safe, bytestring-based ASCII values.";
        buildType = "Simple";
      };
      components = {
        ascii = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.blaze-builder
            hsPkgs.case-insensitive
            hsPkgs.hashable
          ];
        };
      };
    }