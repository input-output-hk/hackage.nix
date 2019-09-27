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
      identifier = { name = "caramia"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 Mikko Juola";
      maintainer = "mikjuo@gmail.com";
      author = "Mikko Juola";
      homepage = "https://github.com/Noeda/caramia/";
      url = "";
      synopsis = "Caramia real-time hardware-accelerated rendering library";
      description = "(See README.md in the repository for a more comprehensive description).\n\nThese are low-level, but Haskelly bindings to OpenGL 3.3.\n\nSee 'giveContext' in \"Caramia.Context\" as this is the\nstarting point for using this library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."OpenGL" or (sysDepError "OpenGL"));
        buildable = true;
        };
      tests = {
        "smoke-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."caramia" or (buildDepError "caramia"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "memory-info" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."caramia" or (buildDepError "caramia"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          buildable = true;
          };
        };
      };
    }