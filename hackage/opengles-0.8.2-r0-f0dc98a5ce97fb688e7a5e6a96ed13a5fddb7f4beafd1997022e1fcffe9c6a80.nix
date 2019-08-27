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
    flags = {
      useegl = true;
      staticlinkes3 = false;
      staticlinkegl15 = false;
      buildexample = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "opengles"; version = "0.8.2"; };
      license = "LGPL-3.0-only";
      copyright = "2014-2016 capsjac";
      maintainer = "capsjac <capsjac at gmail.com>";
      author = "capsjac <capsjac at gmail.com>";
      homepage = "https://github.com/capsjac/opengles#readme";
      url = "";
      synopsis = "Functional interface for OpenGL 4.1+ and OpenGL ES 2.0+";
      description = "A functional OpenGL [ES] wrapper library.\nMade complicated OpenGL APIs easy yet keep flexible enough.\nResulting binary size is relatively small so that apps\nlaunches faster. Works on both desktop and mobile.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."half" or (buildDepError "half"))
          (hsPkgs."fixed" or (buildDepError "fixed"))
          (hsPkgs."future-resource" or (buildDepError "future-resource"))
          (hsPkgs."packer" or (buildDepError "packer"))
          ];
        libs = (pkgs.lib).optionals (system.isLinux) (if flags.useegl
          then [
            (pkgs."EGL" or (sysDepError "EGL"))
            (pkgs."GLESv2" or (sysDepError "GLESv2"))
            ]
          else [
            (pkgs."GL" or (sysDepError "GL"))
            ]) ++ (pkgs.lib).optionals (system.isWindows) (if flags.useegl
          then [
            (pkgs."libEGL" or (sysDepError "libEGL"))
            (pkgs."libGLESv2" or (sysDepError "libGLESv2"))
            ]
          else [ (pkgs."opengl32" or (sysDepError "opengl32")) ]);
        frameworks = (pkgs.lib).optionals (system.isIos) [
          (pkgs."QuartzCore" or (sysDepError "QuartzCore"))
          (pkgs."OpenGLES" or (sysDepError "OpenGLES"))
          ] ++ (pkgs.lib).optional (system.isOsx) (pkgs."OpenGL" or (sysDepError "OpenGL"));
        };
      exes = {
        "windmill" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."opengles" or (buildDepError "opengles"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."future-resource" or (buildDepError "future-resource"))
            ];
          };
        "glsl-sandbox-player" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."opengles" or (buildDepError "opengles"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."future-resource" or (buildDepError "future-resource"))
            ];
          };
        };
      tests = {
        "opengles-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."opengles" or (buildDepError "opengles"))
            ];
          };
        };
      };
    }