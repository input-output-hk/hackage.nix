{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      containers-in-base = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "AERN-Net";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2008 Michal Konecny";
        maintainer = "mik@konecny.aow.cz";
        author = "Michal Konecny (Aston University)";
        homepage = "";
        url = "";
        synopsis = "Compositional lazy dataflow networks for exact real number computation";
        description = "AERN-Net provides\ndatatypes and abstractions for defining and executing\nnetworks of communicating processes.  These networks have a fixed\ntopology, which can be infinite via recursion.\nThe communication on each channel is driven by\nsome query-response protocol.  Basic protocols\nfor communicating approximations of real numbers and\nfunctions are provided together with protocol combinators\neg for communicating value pairs or lists\nand communicating with additional query parameters\nor with optimised repetitions.\n\nAn class-based abstraction is provided to make it possible\nto execute networks on various distributed backends without modification.\nAt the moment there is only one backend, which is not distributed.\nIt is envisaged that truly distributed backends will be added soon,\neg based on plain TCP, MPI or REST/SOAP Web services.\n\nA mathematical foundation of these networks is described\nin the draft\npaper <http://www-users.aston.ac.uk/~konecnym/papers/ernets08-draft.html>.\n\nSimple examples of usage can be found in modules @DemoMax@ and @DemoSqrt@\nin folder @tests@.";
        buildType = "Simple";
      };
      components = {
        "AERN-Net" = {
          depends  = if _flags.containers-in-base
            then [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.html
              hsPkgs.time
              hsPkgs.stm
              hsPkgs.AERN-Real
              hsPkgs.AERN-RnToRm
            ]
            else [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.binary
              hsPkgs.html
              hsPkgs.time
              hsPkgs.stm
              hsPkgs.AERN-Real
              hsPkgs.AERN-RnToRm
            ];
        };
      };
    }