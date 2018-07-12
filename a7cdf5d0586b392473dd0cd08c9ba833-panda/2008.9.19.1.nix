{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "panda";
          version = "2008.9.19.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/panda/";
        url = "";
        synopsis = "Simple Static Blog Engine";
        description = "Simple Static Blog Engine";
        buildType = "Simple";
      };
      components = {
        "panda" = {
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
            hsPkgs.MissingH
            hsPkgs.parsec
          ];
        };
      };
    }