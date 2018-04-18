{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-perch";
          version = "0.3.3";
        };
        license = "MIT";
        copyright = "Copyright © 2015-2016 Arthur S. Fayzrakhmanov. All rights reserved.";
        maintainer = "heraldhoi@gmail.com";
        author = "Arthur S. Fayzrakhmanov";
        homepage = "";
        url = "";
        synopsis = "GHCJS version of Perch library.";
        description = "This package makes the creation of DOM elements easy\nwith a syntax similar to other Haskell HTML generators\nsuch as `blaze-html`, using monoids and monads.";
        buildType = "Simple";
      };
      components = {
        ghcjs-perch = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ] ++ pkgs.lib.optional compiler.isGhcjs hsPkgs.ghcjs-base;
        };
      };
    }