{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "musicxml2";
          version = "1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "A representation of the MusicXML format.";
        description = "A representation of the MusicXML format.";
        buildType = "Simple";
      };
      components = {
        "musicxml2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.data-default
            hsPkgs.type-unary
            hsPkgs.reverse-apply
            hsPkgs.xml
            hsPkgs.music-pitch-literal
            hsPkgs.music-dynamics-literal
          ];
        };
      };
    }