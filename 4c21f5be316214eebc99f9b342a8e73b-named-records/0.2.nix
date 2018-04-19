{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "named-records";
          version = "0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        homepage = "";
        url = "";
        synopsis = "Flexible records with named fields.";
        description = "Flexible records with named fields.\n\n[@v0.2@] Default values with @record@.";
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