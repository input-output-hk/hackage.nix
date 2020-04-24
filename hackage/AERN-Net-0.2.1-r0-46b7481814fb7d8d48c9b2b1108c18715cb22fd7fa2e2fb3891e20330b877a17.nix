{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "AERN-Net"; version = "0.2.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."AERN-Real" or ((hsPkgs.pkgs-errors).buildDepError "AERN-Real"))
          (hsPkgs."AERN-RnToRm" or ((hsPkgs.pkgs-errors).buildDepError "AERN-RnToRm"))
          ];
        buildable = true;
        };
      };
    }