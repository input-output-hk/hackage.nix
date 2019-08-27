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
      identifier = { name = "gelatin"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally";
      homepage = "";
      url = "";
      synopsis = "An experimental real time renderer.";
      description = "gelatin is a very experimental real time rendering\nengine for 2d graphics. It is backed by opengl 3.2.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."gl" or (buildDepError "gl"))
          (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
          (hsPkgs."FontyFruity" or (buildDepError "FontyFruity"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gelatin-core" or (buildDepError "gelatin-core"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."gl" or (buildDepError "gl"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."FontyFruity" or (buildDepError "FontyFruity"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }