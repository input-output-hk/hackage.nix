{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "fix-symbols-gitit";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "";
        url = "";
        synopsis = "Gitit plugin: Turn some Haskell symbols into pretty math symbols.";
        description = "Gitit plugin: Turn some Haskell symbols into pretty math symbols.";
        buildType = "Simple";
      };
      components = {
        fix-symbols-gitit = {
          depends  = [
            hsPkgs.base
            hsPkgs.gitit
          ];
        };
      };
    }