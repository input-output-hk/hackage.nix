{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-cereal";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ianmllgn@gmail.com";
        author = "Ian Milligan";
        homepage = "";
        url = "";
        synopsis = "Encode and decode binary streams using the pipes and cereal libraries.";
        description = "";
        buildType = "Simple";
      };
      components = {
        pipes-cereal = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.mtl
            hsPkgs.pipes
            hsPkgs.pipes-bytestring
            hsPkgs.pipes-parse
          ];
        };
      };
    }