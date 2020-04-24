{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gore-and-ash-demo"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/Teaspot-Studio/gore-and-ash-demo";
      url = "";
      synopsis = "Demonstration game for Gore&Ash game engine";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gore-and-ash-demo-client" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."exception-transformers" or ((hsPkgs.pkgs-errors).buildDepError "exception-transformers"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."gore-and-ash" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-actor" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-actor"))
            (hsPkgs."gore-and-ash-logging" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-logging"))
            (hsPkgs."gore-and-ash-network" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-network"))
            (hsPkgs."gore-and-ash-sdl" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-sdl"))
            (hsPkgs."gore-and-ash-sync" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-sync"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "gore-and-ash-demo-server" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."exception-transformers" or ((hsPkgs.pkgs-errors).buildDepError "exception-transformers"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."gore-and-ash" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash"))
            (hsPkgs."gore-and-ash-actor" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-actor"))
            (hsPkgs."gore-and-ash-logging" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-logging"))
            (hsPkgs."gore-and-ash-network" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-network"))
            (hsPkgs."gore-and-ash-sync" or ((hsPkgs.pkgs-errors).buildDepError "gore-and-ash-sync"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }