{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dynamic = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "GLFW";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>, Marc Sunet <jeannekamikaze@gmail.com>";
      author = "";
      homepage = "http://haskell.org/haskellwiki/GLFW";
      url = "";
      synopsis = "A Haskell binding for GLFW";
      description = "A Haskell binding for GLFW, a window system independent toolkit\nfor writing OpenGL programs. For more information about the C\nlibrary on which this binding is based, please see\n<http://www.glfw.org>.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
        ];
        libs = if flags.dynamic
          then [ (pkgs."glfw") ]
          else pkgs.lib.optionals (!system.isOsx) (if system.isWindows
            then [ (pkgs."opengl32") ]
            else [
              (pkgs."X11")
              (pkgs."GL")
            ]);
        frameworks = pkgs.lib.optionals (!flags.dynamic) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."Cocoa")
          (pkgs."OpenGL")
        ]);
      };
    };
  }