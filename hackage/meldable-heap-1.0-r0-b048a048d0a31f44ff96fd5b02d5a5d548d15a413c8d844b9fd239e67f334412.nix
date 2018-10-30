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
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "priority-queue-hackage@jbapple.com";
      author = "Jim Apple";
      homepage = "http://code.google.com/p/priority-queues/";
      url = "";
      synopsis = "Asymptotically optimal, Coq-verified meldable heaps, AKA priority queues";
      description = "A heap is a container supporting the insertion of elements and the extraction of the minimum element. This library additionally supports melding two heaps. This library models the implementation of asymptotically optimal purely functional heaps given by Brodal and Okasaki in their paper \\\"Optimal Purely Functional Priority Queues\\\". It has been proved correct using the Coq proof assistant.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }