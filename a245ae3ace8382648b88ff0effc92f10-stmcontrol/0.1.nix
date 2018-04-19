{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "stmcontrol";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "martin.sulzmann@gmail.com";
        author = "Martin Sulzmann";
        homepage = "http://sulzmann.blogspot.com/2008/12/stm-with-control-communication-for.html";
        url = "";
        synopsis = "Control communication among retrying transactions";
        description = "Control communication among retrying transactions";
        buildType = "Simple";
      };
      components = {
        stmcontrol = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.stm
            hsPkgs.mtl
          ];
        };
      };
    }