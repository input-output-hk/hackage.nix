{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      editline = true;
      readline = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "alms";
          version = "0.4.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010, Jesse A. Tov";
        maintainer = "tov@ccs.neu.edu";
        author = "Jesse A. Tov <tov@ccs.neu.edu>";
        homepage = "http://www.ccs.neu.edu/~tov/pubs/alms";
        url = "";
        synopsis = "a practical affine language";
        description = "Alms is a general-purpose programming language that supports practical\naffine types. To offer the expressiveness of Girard’s linear logic while\nkeeping the type system light and convenient, Alms uses expressive kinds\nthat minimize notation while maximizing polymorphism between affine and\nunlimited types.\nA key feature of Alms is the ability to introduce abstract affine types\nvia ML-style signature ascription. In Alms, an interface can impose\nstiffer resource usage restrictions than the principal usage\nrestrictions of its implementation. This form of sealing allows the type\nsystem to naturally and directly express a variety of resource\nmanagement protocols from special-purpose type systems.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "alms" = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.pretty
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.network
              hsPkgs.directory
              hsPkgs.template-haskell
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.random
              hsPkgs.array
            ] ++ (if _flags.readline
              then [ hsPkgs.readline ]
              else pkgs.lib.optional _flags.editline hsPkgs.editline);
          };
        };
      };
    }