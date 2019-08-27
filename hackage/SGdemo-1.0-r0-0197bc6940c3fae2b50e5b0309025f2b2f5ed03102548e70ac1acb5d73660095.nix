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
      specVersion = "0";
      identifier = { name = "SGdemo"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2009, Neil Brown";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "";
      url = "";
      synopsis = "An example of using the SG and OpenGL libraries";
      description = "This program serves as a demonstration of the functions of the SG library\n(to be found on Hackage:\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/SG>)) by\nvisualising it with OpenGL.  It also serves as a sort of informal test\nsuite for the SG library.  Documentation is available at\nthe top of the main module's source code.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sgdemo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SG" or (buildDepError "SG"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          };
        };
      };
    }