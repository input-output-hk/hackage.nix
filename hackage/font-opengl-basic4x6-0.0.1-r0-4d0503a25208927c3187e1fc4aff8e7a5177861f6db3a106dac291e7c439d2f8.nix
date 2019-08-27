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
      identifier = { name = "font-opengl-basic4x6"; version = "0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Basic4x6 font for OpenGL";
      description = "Basic4x6 font for OpenGL containing digits and symbols. It is\ncalled \\\"4x6\\\" because it was drawn in 4x6 grids on graph paper.\n\nThis library might not be a good idea, but I needed to display\nsome simple values and didn't want to introduce any heavy\ndependencies.\n\nRun executable 'show-font-basic4x6' for a demo.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      exes = {
        "show-font-basic4x6" = {
          depends = [
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }