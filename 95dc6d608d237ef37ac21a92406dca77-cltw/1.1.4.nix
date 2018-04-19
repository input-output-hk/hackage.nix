{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "cltw";
          version = "1.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Dino Morelli";
        maintainer = "Dino Morelli <dino@ui3.info>";
        author = "Dino Morelli";
        homepage = "http://ui3.info/d/proj/cltw.html";
        url = "";
        synopsis = "Command line Twitter utility";
        description = "A tool for performing some Twitter API functions\nfrom the command line.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cltw = {
            depends  = [
              hsPkgs.base
              hsPkgs.curl
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.tagsoup
            ];
          };
        };
      };
    }