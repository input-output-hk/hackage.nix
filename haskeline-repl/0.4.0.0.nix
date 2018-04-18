{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskeline-repl";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Rein van der Woerd";
        maintainer = "reinvanderwoerd@me.com";
        author = "Rein van der Woerd";
        homepage = "https://github.com/githubuser/haskeline-repl#readme";
        url = "";
        synopsis = "";
        description = "A convenient Haskeline wrapper";
        buildType = "Simple";
      };
      components = {
        haskeline-repl = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskeline
            hsPkgs.mtl
            hsPkgs.ansi-terminal
            hsPkgs.safe
          ];
        };
      };
    }