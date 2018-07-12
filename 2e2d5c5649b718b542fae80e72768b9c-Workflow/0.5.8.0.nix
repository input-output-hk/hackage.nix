{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Workflow";
          version = "0.5.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "library for transparent execution  of interruptible  computations";
        description = "Transparent support  for interruptible computations. A workflow can be seen as a persistent thread that executes any\nmonadic computation. Therefore, it can be used in very time consuming computations such are CPU intensive calculations\nor procedures that are most of the time waiting for the action of a process or an user, that are prone to comunication\nfailures, timeouts or shutdowns.\n\nThe computantion can be restarted at the interrupted point thanks to its logged state in permanent storage.\nBesides that, the package also provides other services associated to workflows\n\nNew in this release,\n\n* registerType is no longer needed\n\n* Configurable state persistence (for example, in databases) . Default in files\n\n* Added Data.Binary  serialization (Use `Control.Workflow.Binary`) besides Text serialization  (`Control.Wokflow.Text`)\n\n* New simpler and more intuitive workflow  primitives with excepion handling\n\n* Instances of classes in Control.Concurrent.MonadIO, MonadCatchIO\n\n* An EDSL of workflow patterns. To express  bifurcations, confluences, timeouts etc\n\n* References to  workflow objects, that can be accessed externally: WFRef's\n\nPrevious versions:\n\n* Persisten communications facilities trough persistent data objects, inspection of workflow states ,  persistent  queues, persistent timeouts and, new in this release, References to internal workflow objects WFRef's\n\n* workflow management and monitoriing, view workflow history and intermediate results.";
        buildType = "Simple";
      };
      components = {
        "Workflow" = {
          depends  = [
            hsPkgs.vector
            hsPkgs.transformers
            hsPkgs.extensible-exceptions
            hsPkgs.MonadCatchIO-mtl
            hsPkgs.monadIO
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
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