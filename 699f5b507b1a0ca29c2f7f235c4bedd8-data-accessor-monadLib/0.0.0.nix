{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "data-accessor-monadLib";
          version = "0.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Russell O'Connor <roconnor@theorem.ca>";
        author = "Russell O'Connor";
        homepage = "";
        url = "";
        synopsis = "Accessor functions for monadLib's monads";
        description = "";
        buildType = "Simple";
      };
      components = {
        data-accessor-monadLib = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-accessor
            hsPkgs.monadLib
          ];
        };
      };
    }