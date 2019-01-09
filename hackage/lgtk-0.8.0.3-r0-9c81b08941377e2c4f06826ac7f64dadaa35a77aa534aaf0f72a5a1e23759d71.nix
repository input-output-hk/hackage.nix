{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gtk = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "lgtk"; version = "0.8.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "http://www.haskell.org/haskellwiki/LGtk";
      url = "";
      synopsis = "Lens GUI Toolkit";
      description = "LGtk is a GUI Toolkit.\n\nMain goals of LGtk:\n\n-Provide a Haskell EDSL for declarative description of interactive graphical applications\n\n-Provide an API for custom widget design\n\n-Provide a playground for high-level declarative features like\nderived state-save and undo-redo operations and\ntype-driven GUI generation\n\nFor more information visit the following links:\n\n-<http://www.haskell.org/haskellwiki/LGtk haskell.org wiki page>\n\n-<http://lgtk.wordpress.com/ Wordpress blog>\n\n-<https://github.com/divipp/lgtk GitHub repository>\n\n-<http://hackage.haskell.org/package/lgtk Haddock documentation (this page)>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.groups)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.operational)
          (hsPkgs.lens)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.system-filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.colour)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.cairo)
          (hsPkgs.OpenGLRaw)
          (hsPkgs.GLFW-b)
          (hsPkgs.lensref)
          ] ++ (pkgs.lib).optional (flags.gtk) (hsPkgs.gtk);
        };
      exes = {
        "lgtkdemo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.lens)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            (hsPkgs.diagrams-lib)
            (hsPkgs.lgtk)
            ];
          };
        };
      };
    }