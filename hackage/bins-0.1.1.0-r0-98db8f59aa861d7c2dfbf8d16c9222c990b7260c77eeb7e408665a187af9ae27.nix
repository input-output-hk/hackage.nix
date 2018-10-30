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
        name = "bins";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/bins#readme";
      url = "";
      synopsis = "Aggregate continuous values into discrete bins";
      description = "Please see the README on GitHub at <https://github.com/mstksg/bins#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.finite-typelits)
          (hsPkgs.ghc-typelits-knownnat)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.math-functions)
          (hsPkgs.profunctors)
          (hsPkgs.reflection)
          (hsPkgs.tagged)
          (hsPkgs.vector-sized)
        ];
      };
    };
  }