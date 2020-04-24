{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "opengles"; version = "0.6.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2014 capsjac";
      maintainer = "capsjac <capsjac at gmail dot com>";
      author = "capsjac <capsjac at gmail dot com>";
      homepage = "";
      url = "";
      synopsis = "OpenGL ES 2.0 and 3.0 with EGL 1.4";
      description = "A simplified OpenGL ES core wrapper library.\nThe mission statement of this library is three F: Fun, Fast, yet Flexible.\nPlease check out simple texture rendering example in just 100 lines.\nThis library is intended use on mobile, however,\nalso works in OpenGL 4.1/4.3+ environment on desktop.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          (hsPkgs."future-resource" or ((hsPkgs.pkgs-errors).buildDepError "future-resource"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."packer" or ((hsPkgs.pkgs-errors).buildDepError "packer"))
          ];
        libs = [
          (pkgs."EGL" or ((hsPkgs.pkgs-errors).sysDepError "EGL"))
          (pkgs."GLESv2" or ((hsPkgs.pkgs-errors).sysDepError "GLESv2"))
          ];
        frameworks = (pkgs.lib).optionals (system.isIos) [
          (pkgs."QuartzCore" or ((hsPkgs.pkgs-errors).sysDepError "QuartzCore"))
          (pkgs."OpenGLES" or ((hsPkgs.pkgs-errors).sysDepError "OpenGLES"))
          ];
        buildable = true;
        };
      };
    }