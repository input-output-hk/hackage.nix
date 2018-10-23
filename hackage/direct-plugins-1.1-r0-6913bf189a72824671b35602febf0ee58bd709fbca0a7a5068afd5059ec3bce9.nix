{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "direct-plugins";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 Dan Knapp";
      maintainer = "dankna@gmail.com";
      author = "Dan Knapp";
      homepage = "http://dankna.com/software/";
      url = "";
      synopsis = "Lightweight replacement for Plugins, specific to GHC";
      description = "The Plugins package unfortunately does not work on GHC 6.12, and is at any rate\nrather poorly documented.  This package uses the same general strategy but without\nquite as many options, aiming to be simple and useful rather than complete.  This\nrelease renames load to unsafeLoad and adds loadDynamic, which is type-safe.";
      buildType = "Simple";
    };
    components = {
      "direct-plugins" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
        ];
      };
    };
  }