{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "named-records";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        homepage = "";
        url = "";
        synopsis = "Named records.";
        description = "Named records.";
        buildType = "Simple";
      };
      components = {
        named-records = {
          depends  = [
            hsPkgs.base
            hsPkgs.names
            hsPkgs.template-haskell
          ];
        };
      };
    }