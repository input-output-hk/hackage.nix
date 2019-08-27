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
      identifier = { name = "PortMidi"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>";
      author = "";
      homepage = "http://haskell.org/haskellwiki/PortMidi";
      url = "";
      synopsis = "A binding for PortMedia/PortMidi";
      description = "A Haskell binding for PortMedia/PortMidi";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = if system.isLinux
          then [ (pkgs."asound" or (sysDepError "asound")) ]
          else (pkgs.lib).optionals (!system.isOsx) ((pkgs.lib).optional (system.isWindows) (pkgs."winmm" or (sysDepError "winmm")));
        frameworks = (pkgs.lib).optionals (!system.isLinux) ((pkgs.lib).optionals (system.isOsx) [
          (pkgs."CoreMIDI" or (sysDepError "CoreMIDI"))
          (pkgs."CoreFoundation" or (sysDepError "CoreFoundation"))
          (pkgs."CoreAudio" or (sysDepError "CoreAudio"))
          ]);
        };
      };
    }