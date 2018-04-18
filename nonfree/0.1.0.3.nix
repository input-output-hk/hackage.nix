{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nonfree";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "shachaf@gmail.com";
        author = "Shachaf Ben-Kiki";
        homepage = "";
        url = "";
        synopsis = "Free structures sans laws";
        description = "Reified structures for debugging consumers of type classes.";
        buildType = "Simple";
      };
      components = {
        nonfree = {
          depends  = [ hsPkgs.base ];
        };
      };
    }