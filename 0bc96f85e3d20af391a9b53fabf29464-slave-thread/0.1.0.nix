{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "slave-thread";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2014, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/slave-thread";
        url = "";
        synopsis = "A solution to ghost threads and silent exceptions";
        description = "Vanilla thread management in Haskell is low level and\nit does not approach the problems related to thread deaths.\nWhen it's used naively the following typical problems arise:\n\n* When a forked thread dies due to an uncaught exception,\nthe exception does not get raised in the main thread,\nwhich is why the program continues to run as if nothing happened,\ni.e., with the presumption that the already dead thread is running normally.\nIt does not need an explanation\nthat this may bring your program to a chaotic state.\n\n* Another issue is that one thread dying does not\naffect any of the threads forked from it.\nThat's why your program may be accumulating ghost threads.\n\n* Ever dealt with your program ignoring the \\<Ctrl-C\\> strikes?\n\nThis library solves all the issues above with a concept of a slave thread.\nA slave thread has the following properties:\n\n1. When it dies for whatever reason (exception or finishing normally)\nit kills all the slave threads that were forked from it.\nThis protects you from ghost threads.\n\n2. It waits for all slaves to die and execute their finalizers\nbefore executing its own finalizer and getting released itself.\nThis gives you hierarchical releasing of resources.\n\n3. When a slave thread dies with an uncaught exception\nit reraises it in the parent thread.\nThis protects you from silent exceptions.\nIf your program is brought to an erroneous state\nyou can be sure of getting informed.";
        buildType = "Simple";
      };
      components = {
        slave-thread = {
          depends  = [
            hsPkgs.stm-containers
            hsPkgs.partial-handler
            hsPkgs.list-t
            hsPkgs.mmorph
            hsPkgs.transformers
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.slave-thread
              hsPkgs.HTF
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
        };
      };
    }