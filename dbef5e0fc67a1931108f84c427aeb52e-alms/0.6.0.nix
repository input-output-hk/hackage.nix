{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      unicode = true;
      editline = true;
      parsec3 = true;
      readline = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "alms";
          version = "0.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "2011, Jesse A. Tov";
        maintainer = "tov@ccs.neu.edu";
        author = "Jesse A. Tov <tov@ccs.neu.edu>";
        homepage = "http://www.ccs.neu.edu/~tov/pubs/alms";
        url = "";
        synopsis = "a practical affine language";
        description = "Alms is an experimental, general-purpose programming language that\nsupports practical affine types. To offer the expressiveness of\nGirard’s linear logic while keeping the type system light and\nconvenient, Alms uses expressive kinds that minimize notation while\nmaximizing polymorphism between affine and unlimited types.\nA key feature of Alms is the ability to introduce abstract affine types\nvia ML-style signature ascription. In Alms, an interface can impose\nstiffer resource usage restrictions than the principal usage\nrestrictions of its implementation. This form of sealing allows the type\nsystem to naturally and directly express a variety of resource\nmanagement protocols from special-purpose type systems.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "alms" = {
            depends  = ([
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.fgl
              hsPkgs.filepath
              hsPkgs.incremental-sat-solver
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.pretty
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.syb
              hsPkgs.template-haskell
              hsPkgs.transformers
              hsPkgs.tuple
            ] ++ (if _flags.readline
              then [ hsPkgs.readline ]
              else pkgs.lib.optional _flags.editline hsPkgs.editline)) ++ [
              hsPkgs.parsec
            ];
          };
        };
      };
    }