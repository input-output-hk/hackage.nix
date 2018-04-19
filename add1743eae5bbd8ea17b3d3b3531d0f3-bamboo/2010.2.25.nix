{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bamboo";
          version = "2010.2.25";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/bamboo/tree/master";
        url = "";
        synopsis = "A blog engine on Hack";
        description = "";
        buildType = "Simple";
      };
      components = {
        bamboo = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.haskell98
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.bytestring
            hsPkgs.zlib
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.parsedate
            hsPkgs.xhtml
            hsPkgs.utf8-string
            hsPkgs.pandoc
            hsPkgs.parsec
            hsPkgs.gravatar
            hsPkgs.data-default
            hsPkgs.mps
            hsPkgs.hack
            hsPkgs.hack-contrib
          ];
        };
      };
    }