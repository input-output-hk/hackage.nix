{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "opengles";
        version = "0.5.0";
      };
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
      "opengles" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.array)
          (hsPkgs.future-resource)
          (hsPkgs.linear-vect)
          (hsPkgs.packer)
        ];
        libs = [
          (pkgs."EGL")
          (pkgs."GLESv2")
        ];
        frameworks = pkgs.lib.optionals (system.isIos) [
          (pkgs."QuartzCore")
          (pkgs."OpenGLES")
        ];
      };
    };
  }