{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "OpenVGRaw"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Raw binding to OpenVG (ShivaVG-0.2.1 implementation).";
      description = "A raw Haskell binding to OpenVG vector graphics API version\n1.0.1, specifically the ShivaVG-0.2.1 implementation.\n\nFollowing Sven Panne\\'s OpenGL model this is essentially a 1:1\nmapping between the OpenVG C API and Haskell and is expected\nto be used in concert with the higher-level @OpenVG@ pacakge.\n\nDetailed install instructions for Windows (MinGW/MSYS) are\nincluded in the @OpenVG@ package.\n\nChangelog\n\nv0.3.0 to v0.4.0\n\n* Re-fixed imports to work with GHC 7.6.\nSeemingly I missed uploading V0.3.0 to Hackage in August\n2012.\n\nv0.2.0 to v0.3.0\n\n* Fixed imports\n\nv0.1.0 to v0.2.0\n\n* Changed type of vgGetMatrix\n";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.OpenGLRaw) ]; };
      };
    }