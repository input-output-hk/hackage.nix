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
    flags = { development = false; };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "purescheme-wai-routing-core";
        version = "0.1.0.0";
        };
      license = "Apache-2.0";
      copyright = "2020 Fernando Rincon Martin";
      maintainer = "f.rincon@protonmail.com";
      author = "Fernando Rincon Martin";
      homepage = "https://github.com/purescheme/purescheme-wai-routing-core#readme";
      url = "";
      synopsis = "Simple Routing functions for Wai Applications";
      description = "Please see the README on GitHub at <https://github.com/purescheme/purescheme-wai-routing-core#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."interpolate" or (buildDepError "interpolate"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."wai" or (buildDepError "wai"))
          ] ++ (pkgs.lib).optional (flags.development) (hsPkgs."placeholders" or (buildDepError "placeholders"));
        buildable = true;
        };
      exes = {
        "simple-routing-core-exe" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."purescheme-wai-routing-core" or (buildDepError "purescheme-wai-routing-core"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ] ++ (pkgs.lib).optional (flags.development) (hsPkgs."placeholders" or (buildDepError "placeholders"));
          buildable = true;
          };
        };
      tests = {
        "simple-routing-core-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."purescheme-wai-routing-core" or (buildDepError "purescheme-wai-routing-core"))
            ] ++ (pkgs.lib).optional (flags.development) (hsPkgs."placeholders" or (buildDepError "placeholders"));
          buildable = true;
          };
        };
      };
    }