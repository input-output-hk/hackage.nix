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
        name = "meldable-heap";
        version = "2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "JimApple";
      author = "Jim Apple";
      homepage = "https://github.com/jbapple/priority-queues";
      url = "";
      synopsis = "Asymptotically optimal, Coq-verified meldable heaps, AKA priority queues";
      description = "A heap is a container supporting the insertion of elements and the extraction of the minimum element. This library additionally supports melding two heaps. This library models the implementation of asymptotically optimal purely functional heaps given by Brodal and Okasaki in their paper \\\"Optimal Purely Functional Priority Queues\\\". It has been proved correct using the Coq proof assistant. The proofs are included in the Cabal package.\n\nA description of the differences between versions of this package is available at <https://github.com/jbapple/priority-queues/blob/master/brodal-okasaki/cabal/CHANGELOG>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }