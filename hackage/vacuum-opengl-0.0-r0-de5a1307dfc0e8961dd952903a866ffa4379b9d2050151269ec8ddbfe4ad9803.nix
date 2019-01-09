{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "vacuum-opengl"; version = "0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Visualize live Haskell data structures using vacuum, graphviz and OpenGL.";
      description = "Visualize live Haskell data structures using vacuum, graphviz and OpenGL.\nIntended as an easier-to-build alternative (no large dependency chain)\nto vacuum-cairo. Because of severe problems with GHCi+GLUT, it is\nimplemented using a client-server architecture.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.vacuum) ] ++ [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.network)
          ];
        };
      exes = {
        "vacuum-opengl-server" = {
          depends = [ (hsPkgs.stb-image) (hsPkgs.OpenGL) (hsPkgs.GLUT) ] ++ [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.network)
            ];
          };
        };
      };
    }