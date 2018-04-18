{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "list-zip-def";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "muesli4@gmail.com";
        author = "Moritz Bruder";
        homepage = "";
        url = "";
        synopsis = "Provides zips where the combining doesn't stop premature, but instead uses default elements.";
        description = "";
        buildType = "Simple";
      };
      components = {
        list-zip-def = {
          depends  = [ hsPkgs.base ];
        };
      };
    }