{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "plailude";
          version = "0.5.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) plaimi 2014";
        maintainer = "plailude@plaimi.net";
        author = "plaimi";
        homepage = "https://secure.plaimi.net/works/plailude";
        url = "";
        synopsis = "plaimi's prelude";
        description = "The prelude used internally at plaimi.\nIt does not make a whole lot of sense to use this unless\nyou are hacking on a plaimi project. Arguably, it\ndoesn't even make a little sense.";
        buildType = "Simple";
      };
      components = {
        "plailude" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.unix
          ];
        };
      };
    }