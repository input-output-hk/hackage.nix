let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "AERN-Net"; version = "0.2.1.1"; };
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
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."html" or (buildDepError "html"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."AERN-Real" or (buildDepError "AERN-Real"))
          (hsPkgs."AERN-Real" or (buildDepError "AERN-Real"))
          (hsPkgs."AERN-RnToRm" or (buildDepError "AERN-RnToRm"))
          (hsPkgs."AERN-RnToRm" or (buildDepError "AERN-RnToRm"))
          ];
        };
      };
    }