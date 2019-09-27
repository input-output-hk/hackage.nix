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
      identifier = { name = "OpenVG"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "OpenVG (ShivaVG-0.2.1) binding";
      description = "A Haskell binding for the OpenVG vector graphics API version\n1.0.1, specifically the ShivaVG-0.2.1 implementation.\n\nThis version (0.4.0) is NOT compatible with the Haskell Platform\n(2009.2.0.2) - it uses the split OpenGL packages (RAW, StateVar,\netc.).\n\n\\*\\* WARNING - the module @Graphics.Rendering.OpenVG.VG.Paths@\nseems flawed in hindsight, as it ammalgamates the OpenVG\n@VGPathSegment@ and @VGPathCommand@ data types into one Haskell\ntype. The binding is thus likely to change in the next major\nrevision in what is perhaps the worst place. \\*\\*.\n\nChangelog\n\n0.3.0 to 0.4.0\n\n* LinearGradient type changed to be Vector4 VGfloat.\n\n* RadialGradient changed to (Vector4 VGfloat, VGfloat).\n\n* Removed Marshal and Unmarshal type classes, marshallBool and\nunmarshalBool moved out of the BasicTypes module.\n\n* Type change for colorRampStops.\n\n* Name change - maxStops changed to maxColorRampStops.\n\n* PathType(..) changed to PathAbsRel(..).\n\n* Substantial changes to Haddock docs.\n\n* Error handling in VGU redone - the original code in\nErrorsInternal was taken wholesale from Sven Panne\\'s\nOpenGL binding to help me bootstrap the OpenVG binding.\nRegrettably I forgot to replace it or attribute it -\nI've now replaced it. Sincere apologies to Sven Panne.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (buildDepError "GLUT"))
          (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
          (hsPkgs."StateVar" or (buildDepError "StateVar"))
          (hsPkgs."Tensor" or (buildDepError "Tensor"))
          ];
        buildable = true;
        };
      };
    }