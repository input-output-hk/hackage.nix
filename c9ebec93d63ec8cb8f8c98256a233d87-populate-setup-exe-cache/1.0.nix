{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "populate-setup-exe-cache";
          version = "1.0";
        };
        license = "MIT";
        copyright = "Copyright © 2014 Miëtek Bak";
        maintainer = "Miëtek Bak <hello@mietek.io>";
        author = "Miëtek Bak <hello@mietek.io>";
        homepage = "https://github.com/mietek/populate-setup-exe-cache/";
        url = "";
        synopsis = "Empty Cabal package";
        description = "Empty Cabal package, intended to populate the Cabal @setup-exe-cache@, which is <https://github.com/valderman/haste-compiler/issues/257 required to bootstrap> the <http://haste-lang.org/ Haste compilation system>.";
        buildType = "Simple";
      };
      components = {
        populate-setup-exe-cache = {
          depends  = [ hsPkgs.base ];
        };
      };
    }