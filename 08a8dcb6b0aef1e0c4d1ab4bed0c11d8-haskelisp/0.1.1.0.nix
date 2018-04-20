{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskelisp";
          version = "0.1.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "2016 Takenari Shinohara";
        maintainer = "takenari.shinohara@gmail.com";
        author = "Takenari Shinohara";
        homepage = "http://github.com/githubuser/haskelisp#readme";
        url = "";
        synopsis = "Write Emacs module in Haskell, using Emacs 25's Dynamic Module feature";
        description = "Write Emacs module in Haskell, using Emacs 25's Dynamic Module feature.";
        buildType = "Simple";
      };
      components = {
        haskelisp = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
      };
    }