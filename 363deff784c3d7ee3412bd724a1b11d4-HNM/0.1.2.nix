{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HNM";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Cetin Sert";
        maintainer = "Cetin Sert <cetin@sertcom.de>";
        author = "Cetin Sert <cetin@sertcom.de>";
        homepage = "http://sert.homedns.org/hs/hnm/";
        url = "";
        synopsis = "Happy Network Manager";
        description = "A quick and dirty applet to help you connect\nto wireless networks.";
        buildType = "Simple";
      };
      components = {
        HNM = {
          depends  = [
            hsPkgs.base
            hsPkgs.gtk
            hsPkgs.glib
            hsPkgs.mtl
            hsPkgs.unix
            hsPkgs.regex-posix
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.haskell98
            hsPkgs.directory
          ];
        };
        exes = {
          HNM = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.glib
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.regex-posix
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.haskell98
            ];
          };
        };
      };
    }