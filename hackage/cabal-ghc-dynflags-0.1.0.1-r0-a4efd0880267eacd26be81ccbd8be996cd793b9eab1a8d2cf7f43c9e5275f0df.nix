{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cabal-ghc-dynflags";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/cabal-ghc-dynflags";
      url = "";
      synopsis = "Conveniently configure GHC's dynamic flags for use with Cabal projects";
      description = "One of the challenges of using the GHC API for external tooling\nis handling integration with Cabal. This library provides a simple\ninterface for configuring GHC's dynamic flags as Cabal would have,\nallowing seamless tooling use on Cabal projects.";
      buildType = "Simple";
    };
    components = {
      "cabal-ghc-dynflags" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.Cabal)
          (hsPkgs.ghc)
        ];
      };
    };
  }