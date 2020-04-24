{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
          (hsPkgs."Tensor" or ((hsPkgs.pkgs-errors).buildDepError "Tensor"))
          ];
        buildable = true;
        };
      };
    }