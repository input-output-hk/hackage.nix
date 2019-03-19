{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { inotify = true; server = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "reanimate"; version = "0.1.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "lemmih@gmail.com";
      author = "David Himmelstrup";
      homepage = "https://github.com/Lemmih/reanimate";
      url = "";
      synopsis = "Animation library based on SVGs.";
      description = "Animation library based on SVGs. Can import (and manipulate) SVGs from\nLaTeX and diagrams. Exports gifs, mp4s, and more. Ships with a webbased\nviewer and auto-reloader.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.reanimate-svg)
          (hsPkgs.xml)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.mtl)
          (hsPkgs.matrix)
          (hsPkgs.JuicyPixels)
          (hsPkgs.attoparsec)
          (hsPkgs.parallel)
          (hsPkgs.diagrams)
          (hsPkgs.diagrams-svg)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-contrib)
          (hsPkgs.svg-builder)
          (hsPkgs.matrices)
          (hsPkgs.cubicbezier)
          (hsPkgs.palette)
          (hsPkgs.websockets)
          (hsPkgs.hashable)
          ] ++ (pkgs.lib).optional (flags.inotify) (hsPkgs.hinotify);
        };
      exes = {
        "reanimate-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.websockets)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.time)
            ];
          };
        };
      };
    }