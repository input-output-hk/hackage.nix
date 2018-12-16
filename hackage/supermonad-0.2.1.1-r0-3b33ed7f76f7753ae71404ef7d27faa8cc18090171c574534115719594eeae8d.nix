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
        name = "supermonad";
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016-2018, Jan Bracker";
      maintainer = "Jan Bracker <jan.bracker@googlemail.com>";
      author = "Jan Bracker <jan.bracker@googlemail.com>";
      homepage = "";
      url = "";
      synopsis = "Plugin and base library to support supermonads in Haskell";
      description = "The @supermonad@ library adds support for supermonads to GHC\nusing a type checker plugin. Plugins are available from GHC 7.10 onwards.\nThe base library containing the Haskell representation of super monads\nis also given by this package.\nSupermonads provide a unified representation of several monadic\ngeneralizations to remove the need for manual disambiguation between\nthese notions and allow sharing of common functions between them.\nAdditional information can be found in the <https://github.com/jbracker/supermonad README>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.fgl)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }