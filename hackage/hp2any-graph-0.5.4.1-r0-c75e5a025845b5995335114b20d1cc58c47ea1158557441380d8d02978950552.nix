{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { serveronly = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hp2any-graph"; version = "0.5.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2013, Patai Gergely";
      maintainer = "Patai Gergely (patai.gergely@gmail.com)";
      author = "Patai Gergely";
      homepage = "http://www.haskell.org/haskellwiki/Hp2any";
      url = "";
      synopsis = "Real-time heap graphing utility and profile stream server with a reusable graphing module.";
      description = "This package contains two utilities: a grapher that can display heap\nprofiles in real time both for local and remote processes, and a\nrelay application the grapher connects to in the latter case.\nAdditionally, the graphing capability is exposed to other programs\nas well in the form of a library module.\n\nTo avoid the need for OpenGL on the server side, the package can be\nbuilt with the @ServerOnly@ flag:\n\n@cabal install --flags=serveronly@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optionals (!flags.serveronly) [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hp2any-core" or ((hsPkgs.pkgs-errors).buildDepError "hp2any-core"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          ];
        buildable = if flags.serveronly then false else true;
        };
      exes = {
        "hp2any-graph" = {
          depends = (pkgs.lib).optionals (!flags.serveronly) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hp2any-core" or ((hsPkgs.pkgs-errors).buildDepError "hp2any-core"))
            (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            ];
          libs = (pkgs.lib).optional (!flags.serveronly) (pkgs."glut" or ((hsPkgs.pkgs-errors).sysDepError "glut"));
          buildable = if flags.serveronly then false else true;
          };
        "hp2any-relay" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hp2any-core" or ((hsPkgs.pkgs-errors).buildDepError "hp2any-core"))
            (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }