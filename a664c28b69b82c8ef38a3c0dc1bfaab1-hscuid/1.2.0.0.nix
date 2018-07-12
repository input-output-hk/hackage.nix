{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hscuid";
          version = "1.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dan.buckmaster@gmail.com";
        author = "Daniel Buckmaster";
        homepage = "https://github.com/eightyeight/hscuid";
        url = "";
        synopsis = "Collision-resistant IDs";
        description = "See README (link below).";
        buildType = "Simple";
      };
      components = {
        "hscuid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.formatting
            hsPkgs.time
            hsPkgs.random
            hsPkgs.transformers
            hsPkgs.hostname
            hsPkgs.text
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
          libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
        };
        tests = {
          "hscuid-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hscuid
            ];
          };
        };
      };
    }