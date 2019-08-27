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
      specVersion = "1.6";
      identifier = { name = "reactive-banana"; version = "0.4.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://haskell.org/haskellwiki/Reactive-banana";
      url = "";
      synopsis = "Small but solid library for\nfunctional reactive programming (FRP).";
      description = "A small but solid library for functional reactive programming (FRP).\n\nThe current focus of this library is to implement\na subset of the semantic model for functional reactive programming\npioneered by Conal Elliott.\n\nMoreover, this library can hooked into /any/\nexisting event-based framework.\nIt is especially useful in conjunction with existing\nGUI frameworks like @wxHaskell@ or @gtk2hs@.\n\nThis also means that your code can be a mix of FRP and imperative parts.\nBored of programming imperative GUIs? Write some parts with FRP!\nDon't know how to express something with FRP?\nSwitch back to imperative style!\n\nIn the spectrum of possible FRP implementations,\nthis one features simple semantics but modest expressivity.\nPredicting space & time usage should be easy.\n\nStability forecast:\nKnown inefficiencies that will be addressed.\nNo semantic bugs expected.\nSignificant API changes are likely in future versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ];
        };
      };
    }