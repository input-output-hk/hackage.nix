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
      specVersion = "1.10";
      identifier = { name = "streamly-posix"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Julian Ospald <hasufell@posteo.de> 2020";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Julian Ospald <hasufell@posteo.de>";
      homepage = "";
      url = "";
      synopsis = "Posix related streaming APIs";
      description = "Posix related streaming APIs (such as file reading/writing)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."hpath-posix" or (buildDepError "hpath-posix"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."streamly" or (buildDepError "streamly"))
          (hsPkgs."streamly-bytestring" or (buildDepError "streamly-bytestring"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."word8" or (buildDepError "word8"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."unbuildable" or (buildDepError "unbuildable"));
        buildable = if system.isWindows then false else true;
        };
      tests = {
        "sf-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hpath-posix" or (buildDepError "hpath-posix"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            (hsPkgs."streamly-posix" or (buildDepError "streamly-posix"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."unbuildable" or (buildDepError "unbuildable"));
          buildable = if system.isWindows then false else true;
          };
        };
      };
    }