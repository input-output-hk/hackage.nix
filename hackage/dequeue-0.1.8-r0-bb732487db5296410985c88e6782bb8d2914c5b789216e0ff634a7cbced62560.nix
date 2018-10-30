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
        name = "dequeue";
        version = "0.1.8";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2010 Henry Bucklow";
      maintainer = "Henry Bucklow <henry@elsie.org.uk>";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "A typeclass and an implementation for double-ended queues.";
      description = "A typeclass for double-ended queues, and an implementation of Banker's\nDequeues, as described in Chris Okasaki's Purely Functional Data\nStructures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.QuickCheck)
        ];
      };
      exes = {
        "dequeue-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }