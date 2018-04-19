{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mysnapsession-example";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Smith <cdsmith@gmail.com>";
        author = "Chris Smith <cdsmith@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Example project using mysnapsession";
        description = "This is a simple web application that uses the\nmysnapsession package's continuation programming model\nto build an animal guessing game.";
        buildType = "Simple";
      };
      components = {
        exes = {
          testsnap = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.heist
              hsPkgs.hexpat
              hsPkgs.MonadCatchIO-transformers
              hsPkgs.mtl
              hsPkgs.snap
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.text
              hsPkgs.time
              hsPkgs.mysnapsession
            ];
          };
        };
      };
    }