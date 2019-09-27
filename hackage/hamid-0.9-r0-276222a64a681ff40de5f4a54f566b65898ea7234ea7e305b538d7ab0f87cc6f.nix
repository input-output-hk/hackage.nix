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
      identifier = { name = "hamid"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2012 Balazs Komuves, Hans Hoglund";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Balazs Komuves, Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Binding to the OS level Midi services (fork of system-midi).";
      description = "Cross-platform binding to Midi libraries.\nSupports OS X and Windows (limited testing).\nThe API use the same represeentation as Codec.Midi so system\nand file I/O have the same interface.\nThis package was based on the system-midi package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HCodecs" or (buildDepError "HCodecs"))
          (hsPkgs."newtype" or (buildDepError "newtype"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."winmm" or (sysDepError "winmm"));
        frameworks = (pkgs.lib).optionals (system.isOsx) [
          (pkgs."CoreFoundation" or (sysDepError "CoreFoundation"))
          (pkgs."CoreAudio" or (sysDepError "CoreAudio"))
          (pkgs."CoreMidi" or (sysDepError "CoreMidi"))
          ];
        buildable = true;
        };
      };
    }