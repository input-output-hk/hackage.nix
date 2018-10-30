{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "AERN-Net";
        version = "0.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2009 Michal Konecny";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny (Aston University)";
      homepage = "http://www-users.aston.ac.uk/~konecnym/DISCERN";
      url = "";
      synopsis = "Compositional lazy dataflow networks for exact real number computation";
      description = "AERN-Net provides\ndatatypes and abstractions for defining and executing\nnetworks of communicating processes.  These networks have a fixed\ntopology, which can be infinite via recursion.\nThe communication on each channel is driven by\nsome query-response protocol.  Basic protocols\nfor communicating approximations of real numbers and\nfunctions are provided together with protocol combinators\neg for communicating value pairs or lists\nand communicating with additional query parameters\nor with optimised repetitions.\n\nAn class-based abstraction is provided to make it possible\nto execute networks on various distributed backends without modification.\nAt the moment there is only one backend, which is not distributed.\nIt is envisaged that truly distributed backends will be added soon,\neg based on plain TCP, MPI or REST/SOAP Web services.\n\nA mathematical foundation of these networks is described\nin the draft\npaper <http://www-users.aston.ac.uk/~konecnym/papers/ernets08-draft.html>.\n\nSimple examples of usage can be found in modules @DemoMax@ and @DemoSqrt@\nin folder @examples@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.html)
          (hsPkgs.time)
          (hsPkgs.stm)
          (hsPkgs.AERN-Real)
          (hsPkgs.AERN-Real)
          (hsPkgs.AERN-RnToRm)
          (hsPkgs.AERN-RnToRm)
        ];
      };
    };
  }