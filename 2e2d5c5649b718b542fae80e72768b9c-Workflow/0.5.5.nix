{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Workflow";
          version = "0.5.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "library for transparent execution  of interruptible  computations";
        description = "Transparent support  for interruptable computations. A workflow can be seen as a persistent thread that executes any\nmonadic computation. Therefore, it can be used in very time consuming computations such are CPU intensive calculations\nor procedures that are most of the time waiting for the action of a process or an user, that are prone to comunication\nfailures, timeouts or shutdowns.\n\nThe computantion can be restarted at the interrupted point because such monad is encapsulated inside\na state monad transformer that transparently checkpoint the computation state. Besides that, the package also provides\nother services associated to workflows\nThe main features are:\n\n* logging of each intermediate action results in disk.\n\n* resume  the monadic computation at the last checkpoint after soft or hard interruption.\n\n* suspend a computation until the input object meet certain conditions. useful for inter-workflow comunications.-\n\n* Communications with other processes including other workflows trough persistent data objects,\ninspection of intermediate workflow results ,  persistent  queues, persistent timeouts so that no data is lost due\nto shutdowns\n\n* A workflow can initiate anoter workflow and wait for the resutl\n\n* workflow management and monitoriing, view workflow history and intermediate results.";
        buildType = "Simple";
      };
      components = {
        Workflow = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.RefSerialize
            hsPkgs.TCache
            hsPkgs.stm
            hsPkgs.old-time
            hsPkgs.mtl
          ];
        };
      };
    }