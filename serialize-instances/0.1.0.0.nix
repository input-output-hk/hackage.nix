{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "serialize-instances";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "simon.hudon@gmail.com";
        author = "Simon Hudon";
        homepage = "";
        url = "";
        synopsis = "Instances for Serialize of cereal";
        description = "Instances for Serialize of cereal, especially for TypeRep and NonEmpty";
        buildType = "Simple";
      };
      components = {
        serialize-instances = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.cereal
            hsPkgs.unordered-containers
            hsPkgs.hashable
          ];
        };
      };
    }