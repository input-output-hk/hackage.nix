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
      identifier = { name = "opengl-dlp-stereo"; version = "0.1.2.5"; };
      license = "MIT";
      copyright = "(c) 2015 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/bwbush/opengl-dlp-stereo";
      url = "https://bitbucket.org/bwbush/opengl-dlp-stereo/downloads/opengl-dlp-stereo-0.1.2.5.tar.gz";
      synopsis = "Library and example for using DLP stereo in OpenGL";
      description = "This package contains functions for rendering 3D stereo using DLP 3-D Ready Sync projectors and active-shutter stereo glasses.  It also includes a sample application (see \\<<https://youtu.be/l3rZbMB2XjM>\\>) and notes regarding hardware setup for DLP.  In particular, note that this technique does not require a graphics card that supports @GL_STEREO@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "opengl-dlp-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }