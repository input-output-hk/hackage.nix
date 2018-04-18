{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "powermate";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Evan Martin <martine@danga.com>";
        author = "Evan Martin";
        homepage = "http://neugierig.org/software/darcs/powermate/";
        url = "";
        synopsis = "PowerMate bindings";
        description = "PowerMate bindings for Haskell,\nMPD bindings (barely) for Haskell.";
        buildType = "Simple";
      };
      components = {
        powermate = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.directory
            hsPkgs.network
          ];
        };
      };
    }