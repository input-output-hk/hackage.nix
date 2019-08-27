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
      identifier = { name = "sfml-audio"; version = "0.3.1816.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "shahn@joyridelabs.de";
      author = "Sönke Hahn";
      homepage = "http://patch-tag.com/r/shahn/sfml-audio";
      url = "";
      synopsis = "minimal bindings to the audio module of sfml";
      description = "Provides a very minimal interface to the audio module of sfml.\nCurrently, only the playing of sounds is covered.\nPlaying background music is not yet supported, but planned.\n(sfml is a multimedia library: <http://www.sfml-dev.org/>)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = ([
          (pkgs."stdc++" or (sysDepError "stdc++"))
          (pkgs."sndfile" or (sysDepError "sndfile"))
          ] ++ (pkgs.lib).optionals (system.isLinux) [
          (pkgs."openal" or (sysDepError "openal"))
          (pkgs."pthread" or (sysDepError "pthread"))
          ]) ++ (pkgs.lib).optional (system.isWindows) (pkgs."openal32" or (sysDepError "openal32"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."OpenAL" or (sysDepError "OpenAL"));
        };
      };
    }