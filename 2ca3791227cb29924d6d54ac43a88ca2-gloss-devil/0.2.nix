{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gloss-devil";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas.DuBuisson@gmail.com";
        author = "Thomas M. DuBuisson";
        homepage = "";
        url = "";
        synopsis = "Display images in Gloss using libdevil for decoding";
        description = "";
        buildType = "Simple";
      };
      components = {
        "gloss-devil" = {
          depends  = [
            hsPkgs.base
            hsPkgs.gloss
            hsPkgs.repa
            hsPkgs.repa-devil
            hsPkgs.bytestring
          ];
        };
      };
    }