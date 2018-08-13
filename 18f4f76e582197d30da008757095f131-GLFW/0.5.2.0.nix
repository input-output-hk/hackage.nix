{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dynamic = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.12";
      identifier = {
        name = "GLFW";
        version = "0.5.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>, Marc Sunet <jeannekamikaze@gmail.com>";
      author = "";
      homepage = "http://haskell.org/haskellwiki/GLFW";
      url = "";
      synopsis = "A Haskell binding for GLFW";
      description = "A Haskell binding for GLFW, a window system independent toolkit\nfor writing OpenGL programs. For more information about the C\nlibrary on which this binding is based, please see\n<http://www.glfw.org>. Note that this binding comes with an\nolder GLFW C version 2.7.9 due to incompatible API changes\nGLFW since 3.0 (for example, the removal of texture functions).\nIf you want to use newer GLFW C versions, install Haskell package\nGLFW-b instead.";
      buildType = "Custom";
    };
    components = {
      "GLFW" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
        ];
        libs = if _flags.dynamic
          then [ (pkgs."glfw") ]
          else pkgs.lib.optionals (!system.isOsx) (if system.isWindows
            then [ (pkgs."opengl32") ]
            else [
              (pkgs."X11")
              (pkgs."GL")
            ]);
        frameworks = pkgs.lib.optionals (!_flags.dynamic) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."Cocoa")
          (pkgs."OpenGL")
        ]);
      };
    };
  }