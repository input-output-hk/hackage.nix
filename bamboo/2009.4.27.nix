{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bamboo";
          version = "2009.4.27";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/bamboo/tree/master";
        url = "";
        synopsis = "A simple blog engine on Hack";
        description = "A simple blog engine on Hack";
        buildType = "Simple";
      };
      components = {
        bamboo = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.network
            hsPkgs.haskell98
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.bytestring
            hsPkgs.template
            hsPkgs.base64-string
            hsPkgs.zlib
            hsPkgs.directory
            hsPkgs.ansi-wl-pprint
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.mps
            hsPkgs.parsedate
            hsPkgs.rss
            hsPkgs.xhtml
            hsPkgs.kibro
            hsPkgs.utf8-string
            hsPkgs.pandoc
            hsPkgs.parsec
            hsPkgs.MissingH
            hsPkgs.gravatar
            hsPkgs.data-default
            hsPkgs.hcheat
            hsPkgs.hack
          ];
        };
      };
    }