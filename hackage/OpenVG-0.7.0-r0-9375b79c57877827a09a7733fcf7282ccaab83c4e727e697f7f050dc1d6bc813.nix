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
      specVersion = "1.2";
      identifier = { name = "OpenVG"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "OpenVG (ShivaVG-0.2.1) binding";
      description = "\nA Haskell binding for the OpenVG vector graphics API version\n1.0.1, specifically the ShivaVG-0.2.1 implementation.\n\nThis version (0.7.0) should be compatible with the Haskell\nPlatform (2013.2.0.0).\n\n\\*\\* WARNING - large parts of the API (particular the Paths\nmodule) are untested and may be revised in future. \\*\\*.\n\nChangelog\n\n0.6.0 to 0.7.0\n\n* Updated to work with GHC 7.6 and Platform 2013.2.0.0.\n\n* Updated Windows install instructions.\n\n0.5.0 to 0.6.0\n\n* Added an opaque matrix type to RenderingQuality.\nAcknowledgement - this was derived from the Matrix class\nin HOpenGL.\n\n* Revised Image module - PixelData is now an opaque type rather\nthan a raw pointer.\n\n* Work on Path module - pathBounds implemented. This module is\nentirely untested and may change again in the future.\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (buildDepError "GLUT"))
          (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
          (hsPkgs."OpenVGRaw" or (buildDepError "OpenVGRaw"))
          ];
        };
      };
    }