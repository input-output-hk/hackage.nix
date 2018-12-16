{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cabal-ghc-dynflags";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/cabal-ghc-dynflags";
      url = "";
      synopsis = "Conveniently configure GHC's dynamic flags for use with Cabal projects";
      description = "See Haddocks in 'GHC.Cabal' for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.Cabal)
          (hsPkgs.ghc)
        ];
      };
    };
  }