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
    flags = { usenativewindowslibraries = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ALUT"; version = "2.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2005-2015 Sven Panne";
      maintainer = "Sven Panne <svenpanne@gmail.com>";
      author = "Sven Panne";
      homepage = "https://github.com/haskell-openal/ALUT";
      url = "";
      synopsis = "A binding for the OpenAL Utility Toolkit";
      description = "A Haskell binding for the OpenAL Utility Toolkit, which makes\nmanaging of OpenAL contexts, loading sounds in various formats\nand creating waveforms very easy. For more information about the\nC library on which this binding is based, please see:\n<http://distro.ibiblio.org/rootlinux/rootlinux-ports/more/freealut/freealut-1.1.0/doc/alut.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."StateVar" or (buildDepError "StateVar"))
          (hsPkgs."OpenAL" or (buildDepError "OpenAL"))
          ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [ (pkgs."alut" or (sysDepError "alut")) ]
          else (pkgs.lib).optional (!system.isIos) (pkgs."alut" or (sysDepError "alut"));
        frameworks = (pkgs.lib).optionals (!(system.isWindows && flags.usenativewindowslibraries)) ((pkgs.lib).optional (system.isIos) (pkgs."ALUT" or (sysDepError "ALUT")));
        };
      };
    }