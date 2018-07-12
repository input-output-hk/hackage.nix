{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "dequeue";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Henry Bucklow";
        maintainer = "Henry Bucklow <henry@elsie.org.uk>";
        author = "Henry Bucklow";
        homepage = "";
        url = "";
        synopsis = "A typeclass and an implementation for double-ended queues.";
        description = "A typeclass for double-ended queues, and an implementation of Banker's\nDequeues, as described in Chris Okasaki's Purely Functional Data\nStructures.";
        buildType = "Custom";
      };
      components = {
        "dequeue" = {
          depends  = [
            hsPkgs.base
            hsPkgs.safe
            hsPkgs.QuickCheck
          ];
        };
      };
    }