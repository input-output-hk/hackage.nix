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
      specVersion = "1.6";
      identifier = {
        name = "GLFW";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>";
      author = "";
      homepage = "http://haskell.org/haskellwiki/GLFW";
      url = "";
      synopsis = "A Haskell binding for GLFW";
      description = "A Haskell binding for GLFW, a window system independent toolkit\nfor writing OpenGL programs. For more information about the C\nlibrary on which this binding is based, please see\n<http://glfw.sourceforge.net>.";
      buildType = "Simple";
    };
    components = {
      "GLFW" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
        ];
        libs = if _flags.dynamic
          then [ (pkgs."glfw") ]
          else if system.isLinux
            then [
              (pkgs."Xrandr")
              (pkgs."X11")
            ]
            else pkgs.lib.optionals (!system.isOsx) (pkgs.lib.optional (system.isWindows) (pkgs."opengl32"));
        frameworks = pkgs.lib.optionals (!_flags.dynamic) (pkgs.lib.optionals (!system.isLinux) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."AGL")
          (pkgs."Carbon")
          (pkgs."OpenGL")
        ]));
      };
    };
  }