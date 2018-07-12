{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "porte";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sbahra@repnop.org";
        author = "Samy Al Bahra";
        homepage = "";
        url = "";
        synopsis = "FreeBSD ports index search and analysis tool";
        description = "Porte provides a simple, fast and efficient interface to searching\nFreeBSD ports index fields. It also has a simple statistics mode which\nallows collecting frequency statistics for these fields.";
        buildType = "Simple";
      };
      components = {
        "porte" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.extensible-exceptions
            hsPkgs.stringsearch
          ];
        };
        exes = { "porte" = {}; };
      };
    }