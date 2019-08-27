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
    flags = { yampa-core = true; examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yampa-glut"; version = "0.1.1.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2012 by Nikolay Orlyuk";
      maintainer = "virkony@gmail.com";
      author = "Nikolay Orlyuk";
      homepage = "https://github.com/ony/yampa-glut";
      url = "";
      synopsis = "Connects Yampa and GLUT";
      description = "This package contains an adapter that connects OpenGL/GLUT to the\nFRP library \\\"Yampa\\\".\n\n&#169; 2012 by Nikolay Orlyuk; GPL-3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (buildDepError "GLUT"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."newtype" or (buildDepError "newtype"))
          ] ++ (if flags.yampa-core
          then [ (hsPkgs."Yampa-core" or (buildDepError "Yampa-core")) ]
          else [ (hsPkgs."Yampa" or (buildDepError "Yampa")) ]);
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."newtype" or (buildDepError "newtype"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."vector-space-opengl" or (buildDepError "vector-space-opengl"))
            (hsPkgs."yampa-glut" or (buildDepError "yampa-glut"))
            ] ++ (if flags.yampa-core
            then [ (hsPkgs."Yampa-core" or (buildDepError "Yampa-core")) ]
            else [ (hsPkgs."Yampa" or (buildDepError "Yampa")) ]);
          };
        };
      };
    }