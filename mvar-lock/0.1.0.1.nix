{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mvar-lock";
          version = "0.1.0.1";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Chris Martin <ch.martin@gmail.com>";
        author = "Chris Martin <ch.martin@gmail.com>";
        homepage = "https://github.com/chris-martin/mvar-lock";
        url = "";
        synopsis = "A trivial lock based on MVar.";
        description = "Using an MVar as a lock is a common pattern. This module just wraps that up into some functions with nice names that make the pattern explicit.";
        buildType = "Simple";
      };
      components = {
        mvar-lock = {
          depends  = [
            hsPkgs.base
            hsPkgs.safe-exceptions
          ];
        };
      };
    }