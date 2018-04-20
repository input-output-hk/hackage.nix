{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "conductive-hsc3";
          version = "0.3.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "renick@gmail.com";
        author = "Renick Bell";
        homepage = "http://www.renickbell.net/doku.php?id=conductive-hsc3";
        url = "";
        synopsis = "a library with examples of using Conductive with hsc3";
        description = "This library contains examples of using Conductive with hsc3.";
        buildType = "Simple";
      };
      components = {
        conductive-hsc3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.conductive-base
            hsPkgs.conductive-song
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hosc
            hsPkgs.hsc3
            hsPkgs.random
          ];
        };
      };
    }