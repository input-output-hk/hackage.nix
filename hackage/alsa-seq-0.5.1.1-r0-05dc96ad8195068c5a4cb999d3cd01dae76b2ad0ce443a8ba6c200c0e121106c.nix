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
    flags = { buildexamples = false; modifyfilter = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "alsa-seq"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Iavor S. Diatchki, Henning Thielemann";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Henning Thielemann <alsa@henning-thielemann.de>,\nDylan Simon <dylan@dylex.net>,\nBjorn Bringert <bjorn@bringert.net>,\nIavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Binding to the ALSA Library API (MIDI sequencer).";
      description = "This package provides access to ALSA sequencer (MIDI support).\nFor audio support see alsa-pcm.\nIncluded are some simple example programs.\nFor more example programs including a GUI, see the alsa-gui programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
          (hsPkgs."enumset" or (buildDepError "enumset"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        pkgconfig = [ (pkgconfPkgs."alsa" or (pkgConfDepError "alsa")) ];
        };
      exes = {
        "alsa-seq-dump" = {
          depends = [
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."enumset" or (buildDepError "enumset"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "alsa-seq-send-note" = {
          depends = [
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."enumset" or (buildDepError "enumset"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "alsa-seq-broadcast" = {
          depends = [
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."enumset" or (buildDepError "enumset"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "alsa-seq-list-clients" = {
          depends = [
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."enumset" or (buildDepError "enumset"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "alsa-seq-melody" = {
          depends = [
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."enumset" or (buildDepError "enumset"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "alsa-seq-list-subscribers" = {
          depends = [
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."enumset" or (buildDepError "enumset"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }