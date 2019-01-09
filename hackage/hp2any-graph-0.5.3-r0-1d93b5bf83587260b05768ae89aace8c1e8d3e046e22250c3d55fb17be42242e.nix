{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hp2any-graph"; version = "0.5.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011, Patai Gergely";
      maintainer = "Patai Gergely (patai.gergely@gmail.com)";
      author = "Patai Gergely";
      homepage = "http://www.haskell.org/haskellwiki/Hp2any";
      url = "";
      synopsis = "Real-time heap graphing utility and profile stream server with a reusable graphing module.";
      description = "This package contains two utilities: a grapher that can display heap\nprofiles in real time both for local and remote processes, and a\nrelay application the grapher connects to in the latter case.\nAdditionally, the graphing capability is exposed to other programs\nas well in the form of a library module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.hp2any-core) (hsPkgs.OpenGL) ];
        };
      exes = {
        "hp2any-graph" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.hp2any-core)
            (hsPkgs.parseargs)
            (hsPkgs.network)
            (hsPkgs.OpenGL)
            (hsPkgs.GLUT)
            ];
          libs = [ (pkgs."glut") ];
          };
        "hp2any-relay" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.hp2any-core)
            (hsPkgs.parseargs)
            (hsPkgs.network)
            ];
          };
        };
      };
    }