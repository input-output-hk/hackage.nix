{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "WaveFront"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jonatanhsundqvist@gmail.com";
      author = "Jonatan H Sundqvist";
      homepage = "";
      url = "";
      synopsis = "Parsers and utilities for the OBJ WaveFront 3D model format";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."GLUtil" or ((hsPkgs.pkgs-errors).buildDepError "GLUtil"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."Cartesian" or ((hsPkgs.pkgs-errors).buildDepError "Cartesian"))
          ];
        buildable = true;
        };
      };
    }