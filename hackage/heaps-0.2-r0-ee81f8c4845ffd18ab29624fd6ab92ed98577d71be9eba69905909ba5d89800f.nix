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
      specVersion = "1.2";
      identifier = {
        name = "heaps";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Asymptotically optimal Brodal/Okasaki heaps.";
      description = "Asymptotically optimal Brodal/Okasaki bootstrapped skew-binomial heaps from the paper \\\"Optimal Purely Functional Priority Queues\\\", extended with a Foldable interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }