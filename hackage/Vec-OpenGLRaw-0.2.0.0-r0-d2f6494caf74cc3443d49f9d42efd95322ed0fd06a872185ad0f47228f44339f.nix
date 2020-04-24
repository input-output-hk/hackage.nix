{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Vec-OpenGLRaw"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lane@downstairspeople.org";
      author = "Christopher Lane Hinson";
      homepage = "http://www.downstairspeople.org/darcs/Vec-opengl";
      url = "";
      synopsis = "Instances and functions to interoperate Vec and OpenGL.";
      description = "Provides:\n* NearZero instances for all OpenGL numeric types";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          ];
        buildable = true;
        };
      };
    }