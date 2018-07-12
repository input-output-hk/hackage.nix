{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "snap-language";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jon.petter.bergman@gmail.com";
        author = "Petter Bergman";
        homepage = "https://github.com/jonpetterbergman/snap-accept-language";
        url = "";
        synopsis = "Language handling for Snap";
        description = "Language handling for Snap.\n\nSupport for determining the client's prefered language using\nthe Accept-Language header or using suffixes to the requested URI.";
        buildType = "Simple";
      };
      components = {
        "snap-language" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.containers
            hsPkgs.snap-core
          ];
        };
      };
    }