{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usenativewindowslibraries = true; useglxgetprocaddress = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "gl"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014 Edward A. Kmett,\nCopyright © 2014 Gabríel Arthúr Pétursson,\nCopyright © 2013 Sven Panne";
      maintainer = "ekmett@gmail.com";
      author = "Edward A. Kmett, Gabríel Arthúr Pétursson, Sven Panne";
      homepage = "";
      url = "";
      synopsis = "Complete OpenGL raw bindings";
      description = "Complete OpenGL raw bindings";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fixed" or ((hsPkgs.pkgs-errors).buildDepError "fixed"))
          (hsPkgs."half" or ((hsPkgs.pkgs-errors).buildDepError "half"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        libs = if system.isWindows && flags.usenativewindowslibraries
          then [
            (pkgs."opengl32" or ((hsPkgs.pkgs-errors).sysDepError "opengl32"))
            ]
          else (pkgs.lib).optionals (!system.isOsx) ((pkgs.lib).optional (!system.isIos) (pkgs."GL" or ((hsPkgs.pkgs-errors).sysDepError "GL")));
        frameworks = (pkgs.lib).optionals (!(system.isWindows && flags.usenativewindowslibraries)) (if system.isOsx
          then [
            (pkgs."OpenGL" or ((hsPkgs.pkgs-errors).sysDepError "OpenGL"))
            ]
          else (pkgs.lib).optional (system.isIos) (pkgs."OpenGLES" or ((hsPkgs.pkgs-errors).sysDepError "OpenGLES")));
        buildable = true;
        };
      };
    }