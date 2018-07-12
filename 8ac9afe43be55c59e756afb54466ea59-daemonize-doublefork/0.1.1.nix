{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "daemonize-doublefork";
          version = "0.1.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "scvalex@gmail.com";
        author = "Alexandru Scvortov <scvalex@gmail.com>";
        homepage = "https://github.com/scvalex/daemonize-doublefork";
        url = "";
        synopsis = "Start background daemons by double-forking";
        description = "This package has been deprecated in favour of\n<http://hackage.haskell.org/package/daemons>.\n\nStart background daemons by double-forking.\n\nSee \"System.Posix.Daemon\" for documentation.";
        buildType = "Simple";
      };
      components = {
        "daemonize-doublefork" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.directory
          ];
        };
      };
    }