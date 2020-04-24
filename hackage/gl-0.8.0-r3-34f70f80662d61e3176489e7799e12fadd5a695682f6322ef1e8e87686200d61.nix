{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usenativewindowslibraries = true; useglxgetprocaddress = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "gl"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2017 Edward A. Kmett,\nCopyright © 2014-2017 Gabríel Arthúr Pétursson,\nCopyright © 2013 Sven Panne";
      maintainer = "ekmett@gmail.com";
      author = "Edward A. Kmett, Gabríel Arthúr Pétursson, Sven Panne";
      homepage = "";
      url = "";
      synopsis = "Complete OpenGL raw bindings";
      description = "Complete OpenGL raw bindings";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or ((hsPkgs.pkgs-errors).buildToolDepError "filepath")))
        (hsPkgs.buildPackages.hxt or (pkgs.buildPackages.hxt or ((hsPkgs.pkgs-errors).buildToolDepError "hxt")))
        (hsPkgs.buildPackages.transformers or (pkgs.buildPackages.transformers or ((hsPkgs.pkgs-errors).buildToolDepError "transformers")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or ((hsPkgs.pkgs-errors).buildToolDepError "containers")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fixed" or ((hsPkgs.pkgs-errors).buildDepError "fixed"))
          (hsPkgs."half" or ((hsPkgs.pkgs-errors).buildDepError "half"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
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