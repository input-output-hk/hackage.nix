{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "GLFW-b";
          version = "1.4.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brian Lewis <brian@lorf.org>,\nSchell Scivally <schell.scivally@synapsegroup.com>,\nJavier Jaramago <jaramago.fernandez.javier@gmail.com>";
        author = "Brian Lewis <brian@lorf.org>";
        homepage = "";
        url = "";
        synopsis = "Bindings to GLFW OpenGL library";
        description = "Bindings to GLFW (<http://www.glfw.org/>), an open source, multi-platform\nlibrary for creating windows with OpenGL contexts and managing input and\nevents.\n\nGLFW-b depends on bindings-GLFW\n(<http://hackage.haskell.org/package/bindings-GLFW>), which, as of the time\nof this writing, binds to GLFW 3.1, released 2015-01-18\n(<http://www.glfw.org/Version-3.1-released.html>\n<http://www.glfw.org/changelog.html>).\n\nIf you've used GLFW < 3 before, you should read the transition guide\n(<http://www.glfw.org/docs/3.0/moving.html>).";
        buildType = "Simple";
      };
      components = {
        GLFW-b = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-GLFW
          ];
        };
        tests = {
          main = {
            depends  = [
              hsPkgs.GLFW-b
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.bindings-GLFW
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }