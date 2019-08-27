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
      identifier = { name = "PriorityChansConverger"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2009-2010 Andrejs Sisojevs";
      maintainer = "Andrejs Sisojevs <andrejs.sisojevs@nextmail.ru>";
      author = "Andrejs Sisojevs <andrejs.sisojevs@nextmail.ru>";
      homepage = "";
      url = "";
      synopsis = "Read single output from an array of inputs - channels with priorities";
      description = "Abbreviation for the @PriorityChansConverger@ is PCC.\n\nBased on @STM.TChan@, extended with capacity control.\nWrapped into IO version is also available.\n\nWhen user reads from the PCC, the choice is made - from which channel\nto read. System selects a nonempty channel, whose (CurrentPriority,\nStartPriority) tuple is max. The side effect of the channel selection\nis it's /CurrentPriority/ decrease by one, if it's value becomes\nless than one, then the /CurrentPriority/ is set to /StartPriority/.\n\nFor the main API interface:\n\n@import Control.Concurrent.PriorityChansConverger@\n\nThe realization probably isn't\nvery fast and isn't good at memory economy, since it uses fresh high\nlevel primitive - STM. It wasn't intended to be used\nwith millions of channels. But it's max throughput comparing to the\nordinary @Chan@ throughput is to be estimated (will do it in some\nfuture version).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ];
        };
      };
    }