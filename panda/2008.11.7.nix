{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "panda";
          version = "2008.11.7";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://www.haskell.org/haskellwiki/Panda";
        url = "";
        synopsis = "A simple static blog engine";
        description = "A simple static blog engine";
        buildType = "Simple";
      };
      components = {
        panda = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.network
            hsPkgs.haskell98
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.containers
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
          ];
        };
      };
    }