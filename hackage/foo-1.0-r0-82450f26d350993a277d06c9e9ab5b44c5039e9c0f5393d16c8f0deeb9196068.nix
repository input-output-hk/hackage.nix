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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "foo"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "none";
      author = "Bartosz Wójcik";
      homepage = "http://sourceforge.net/projects/fooengine/?abmode=1";
      url = "";
      synopsis = "Paper soccer, an OpenGL game.";
      description = "Foo (abbreviation from football) is a playing machine of Paper Soccer, a\npencil and paper game for two players, described in WIKIPEDIA. Written\nin Haskell, contains also simply interface using HOpenGL library.\nProvides bunch of playing algorithms.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "foo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }