{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "vacuum-opengl"; version = "0.0.3"; };
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
        depends = [
          (hsPkgs."vacuum" or ((hsPkgs.pkgs-errors).buildDepError "vacuum"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      exes = {
        "vacuum-opengl-server" = {
          depends = [
            (hsPkgs."stb-image" or ((hsPkgs.pkgs-errors).buildDepError "stb-image"))
            (hsPkgs."bitmap" or ((hsPkgs.pkgs-errors).buildDepError "bitmap"))
            (hsPkgs."bitmap-opengl" or ((hsPkgs.pkgs-errors).buildDepError "bitmap-opengl"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }