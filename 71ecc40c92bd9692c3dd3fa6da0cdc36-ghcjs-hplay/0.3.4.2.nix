{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-hplay";
          version = "0.3.4.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gomez Corona";
        homepage = "https://github.com/agocorona/ghcjs-hplay";
        url = "";
        synopsis = "Client-side web EDSL for transient nodes running in the web browser";
        description = "Client-side Haskell framework that compiles to javascript with the GHCJS compiler and run over Transient.  See homepage";
        buildType = "Simple";
      };
      components = {
        ghcjs-hplay = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.transient
            hsPkgs.transient-universe
            hsPkgs.mtl
            hsPkgs.ghcjs-perch
          ] ++ pkgs.lib.optional compiler.isGhcjs hsPkgs.ghcjs-base;
        };
      };
    }