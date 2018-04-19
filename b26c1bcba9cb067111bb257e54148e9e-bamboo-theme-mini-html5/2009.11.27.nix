{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bamboo-theme-mini-html5";
          version = "2009.11.27";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/bamboo-theme-mini-html5";
        url = "";
        synopsis = "bamboo mini html5 theme";
        description = "bamboo mini html5 theme";
        buildType = "Simple";
      };
      components = {
        bamboo-theme-mini-html5 = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.haskell98
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.bytestring
            hsPkgs.base64-string
            hsPkgs.zlib
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.parsedate
            hsPkgs.rss
            hsPkgs.xhtml
            hsPkgs.utf8-string
            hsPkgs.parsec
            hsPkgs.gravatar
            hsPkgs.data-default
            hsPkgs.mps
            hsPkgs.hcheat
            hsPkgs.hack
            hsPkgs.hack-contrib
            hsPkgs.bamboo
            hsPkgs.moe
            hsPkgs.yuuko
          ];
        };
      };
    }