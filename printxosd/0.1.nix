{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "printxosd";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Don Stewart <dons@galois.com>";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "";
        homepage = "http://code.haskell.org/~dons/code/printxosd";
        url = "";
        synopsis = "Simple tool to display some text on an on-screen display";
        description = "Simple tool to display some text on an on-screen display\n\n\$ printxosd \"this is some text\"\n";
        buildType = "Simple";
      };
      components = {
        exes = {
          printxosd = {
            depends  = [
              hsPkgs.base
              hsPkgs.xosd
            ];
          };
        };
      };
    }