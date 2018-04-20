{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "supervisor";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto G. Corona";
        homepage = "http://github.com/agocorona/supervisor";
        url = "";
        synopsis = "Control an internal monad execution for trace generation, backtrakcking, testing and other purposes";
        description = "A supervisor monad that explore the execution tree of an internal monad and define extra behaviours thanks to flexible instance definitions for each particular purpose.\nIt can inject new behaviours for backtracking, trace generation, testing, transaction rollbacks etc\n\nThe supervisor monad is used in the package MFlow to control the routing, state management, back button management and navigation in general.\n\nCurrently only the generation of an execution trace on case of error is developped. See @Control.Monad.Supervisor.Trace@ and the example at @Demos/TraceExample.hs@";
        buildType = "Simple";
      };
      components = {
        supervisor = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.monadloc
            hsPkgs.MonadCatchIO-transformers
          ];
        };
      };
    }