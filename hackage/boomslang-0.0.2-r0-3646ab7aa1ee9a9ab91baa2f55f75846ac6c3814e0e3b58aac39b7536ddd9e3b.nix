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
      identifier = { name = "boomslang"; version = "0.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Boomshine clone";
      description = "A clone of Boomshine (see <http://www.k2xl.com/games/boomshine/>).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "boomslang" = {
          depends = if compiler.isGhc && (compiler.version).ge "6.12"
            then [
              (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
              (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
              (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
              (hsPkgs."data-accessor-template" or (buildDepError "data-accessor-template"))
              (hsPkgs."font-opengl-basic4x6" or (buildDepError "font-opengl-basic4x6"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              ]
            else [
              (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
              (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
              (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
              (hsPkgs."data-accessor-template" or (buildDepError "data-accessor-template"))
              (hsPkgs."font-opengl-basic4x6" or (buildDepError "font-opengl-basic4x6"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
              ];
          buildable = true;
          };
        };
      };
    }