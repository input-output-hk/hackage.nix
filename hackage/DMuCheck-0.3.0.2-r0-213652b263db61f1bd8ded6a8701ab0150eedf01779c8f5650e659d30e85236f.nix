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
    flags = {
      quickcheck = false;
      smallcheck = false;
      hunit = false;
      hspec = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "DMuCheck"; version = "0.3.0.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rahul@gopinath.org";
      author = "Rahul Gopinath <rahul@gopinath.org>";
      homepage = "https://bitbucket.com/osu-testing/d-mucheck";
      url = "";
      synopsis = "Distributed Mutation Analysis framework for MuCheck";
      description = "This package is a wrapper over the mutation analysis\nlibrary MuCheck. It provides a basic process based\nparallelization of mutant execution, and also a\nclient and server based distributed mode of mutant\nexecution. Currently it supports QuickCheck, SmallCheck,\nHUnit and HSpec";
      buildType = "Simple";
      };
    components = {
      exes = {
        "d-mucheck" = {
          depends = ((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."MuCheck" or (buildDepError "MuCheck"))
            ] ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."MuCheck-QuickCheck" or (buildDepError "MuCheck-QuickCheck"))) ++ (pkgs.lib).optional (flags.smallcheck) (hsPkgs."MuCheck-SmallCheck" or (buildDepError "MuCheck-SmallCheck"))) ++ (pkgs.lib).optional (flags.hunit) (hsPkgs."MuCheck-HUnit" or (buildDepError "MuCheck-HUnit"))) ++ (pkgs.lib).optional (flags.hspec) (hsPkgs."MuCheck-Hspec" or (buildDepError "MuCheck-Hspec"));
          buildable = if flags.quickcheck || flags.smallcheck || flags.hunit || flags.hspec
            then true
            else false;
          };
        "d-master" = {
          depends = ((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."MuCheck" or (buildDepError "MuCheck"))
            ] ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."MuCheck-QuickCheck" or (buildDepError "MuCheck-QuickCheck"))) ++ (pkgs.lib).optional (flags.smallcheck) (hsPkgs."MuCheck-SmallCheck" or (buildDepError "MuCheck-SmallCheck"))) ++ (pkgs.lib).optional (flags.hunit) (hsPkgs."MuCheck-HUnit" or (buildDepError "MuCheck-HUnit"))) ++ (pkgs.lib).optional (flags.hspec) (hsPkgs."MuCheck-Hspec" or (buildDepError "MuCheck-Hspec"));
          buildable = if flags.quickcheck || flags.smallcheck || flags.hunit || flags.hspec
            then true
            else false;
          };
        "d-slave" = {
          depends = ((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."MuCheck" or (buildDepError "MuCheck"))
            ] ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."MuCheck-QuickCheck" or (buildDepError "MuCheck-QuickCheck"))) ++ (pkgs.lib).optional (flags.smallcheck) (hsPkgs."MuCheck-SmallCheck" or (buildDepError "MuCheck-SmallCheck"))) ++ (pkgs.lib).optional (flags.hunit) (hsPkgs."MuCheck-HUnit" or (buildDepError "MuCheck-HUnit"))) ++ (pkgs.lib).optional (flags.hspec) (hsPkgs."MuCheck-Hspec" or (buildDepError "MuCheck-Hspec"));
          buildable = if flags.quickcheck || flags.smallcheck || flags.hunit || flags.hspec
            then true
            else false;
          };
        "dummy" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."MuCheck" or (buildDepError "MuCheck"))
            ];
          buildable = true;
          };
        };
      };
    }