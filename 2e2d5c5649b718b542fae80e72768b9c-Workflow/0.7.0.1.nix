{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Workflow";
          version = "0.7.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "Monadic transformer for persistence in threads. and workflow patterns";
        description = "Transparent support  for interruptible computations. A workflow can be seen as a persistent thread that executes any\nmonadic computation. Therefore, it can be used in very time consuming computations such are CPU intensive calculations\nor procedures that are most of the time waiting for the action of a process or an user, that are prone to comunication\nfailures, timeouts or shutdowns. It also can be used if you like to restart your\nprogram at the point where the user left it last time.\n\nThe computation can be restarted at the interrupted point thanks to its logged state in permanent storage.\nBesides that, the package also provides other services associated to workflows\n\nThis release inprove the logging/recovery process in workflows with with many steps\n\nSee \"Control.Workflow\" for details";
        buildType = "Simple";
      };
      components = {
        "Workflow" = {
          depends  = [
            hsPkgs.MonadCatchIO-mtl
            hsPkgs.RefSerialize
            hsPkgs.TCache
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.extensible-exceptions
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.stm
          ];
        };
      };
    }