{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hulk";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "IRC daemon.";
        description = "An IRC daemon with mandatory authentication.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hulk" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.network
              hsPkgs.ConfigFile
              hsPkgs.unix
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.irc
              hsPkgs.split
              hsPkgs.utf8-string
              hsPkgs.Crypto
              hsPkgs.time
            ];
          };
          "hulk-generate-pass" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.network
              hsPkgs.ConfigFile
              hsPkgs.unix
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.irc
              hsPkgs.split
              hsPkgs.utf8-string
              hsPkgs.Crypto
            ];
          };
        };
      };
    }