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
      identifier = { name = "netwire-vinylglfw-examples"; version = "0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "runKleisli@openmailbox.org";
      author = "Rand Kleisli";
      homepage = "";
      url = "";
      synopsis = "Netwire/GLFW/VinylGL input handling demo";
      description = "Port of netwire-input-glfw example to VinylGL & GLSL 1.50. Uses Netwire 5 and Vinyl >= 0.4. NetVinylGLFW is a previous combination of Netwire, VinylGL, & GLFW, but its Netwire and Vinyl versions are outdated as of 2016. The combination with STM that it suggests is embraced by netwire-input-glfw.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "netwire-vinylglfw-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."netwire" or (buildDepError "netwire"))
            (hsPkgs."netwire-input" or (buildDepError "netwire-input"))
            (hsPkgs."netwire-input-glfw" or (buildDepError "netwire-input-glfw"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."GLUtil" or (buildDepError "GLUtil"))
            (hsPkgs."vinyl-gl" or (buildDepError "vinyl-gl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }