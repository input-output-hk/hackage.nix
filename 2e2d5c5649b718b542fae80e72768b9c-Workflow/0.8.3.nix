{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Workflow";
        version = "0.8.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "Workflow patterns over a monad for thread state logging & recovery";
      description = "Transparent support for interruptible computations. A workflow can be seen as a persistent thread that executes a\nmonadic computation. Therefore, it can be used in very time consuming computations such are CPU intensive calculations\nor procedures that are most of the time waiting for the action of a process or an user, that are prone to communication\nfailures, timeouts or shutdowns. It also can be used if you like to restart your\nprogram at the point where the user left it last time\n.             .\nThe computation can be restarted at the interrupted point thanks to its logged state in permanent storage.\nThe thread state is located in files by default. It can be moved and continued in another computer.\nBesides that, the package also provides other higher level services associated to workflows: Workflow patterns,\nand a general configuration utility, workflow observation events and references to the internal state.\nThe state can be stored maintaining memory references (using the \"RefSerialize\" package), so that it is possible to track the modifications\nof a big structure (for example a document) along the workflow execution.\n\nSee \"Control.Workflow\" for details\n\nIn this release:\n* Adaptation for MonadMask instance introduced in the package exceptions-0.6";
      buildType = "Simple";
    };
    components = {
      "Workflow" = {
        depends  = [
          (hsPkgs.exceptions)
          (hsPkgs.RefSerialize)
          (hsPkgs.TCache)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.stm)
          (hsPkgs.vector)
        ];
      };
    };
  }