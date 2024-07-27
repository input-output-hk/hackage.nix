{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "geni-gui"; version = "0.25.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "geni-users@loria.fr";
      author = "Carlos Areces and Eric Kow";
      homepage = "http://projects.haskell.org/GenI";
      url = "";
      synopsis = "GenI graphical user interface";
      description = "";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-macosx or (pkgs.pkgsBuildBuild.cabal-macosx or (errorHandler.setupDepError "cabal-macosx")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.process or (pkgs.pkgsBuildBuild.process or (errorHandler.setupDepError "process")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GenI" or (errorHandler.buildDepError "GenI"))
          (hsPkgs."cabal-macosx" or (errorHandler.buildDepError "cabal-macosx"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."yaml-light" or (errorHandler.buildDepError "yaml-light"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
        ];
        buildable = true;
      };
      exes = {
        "geni-gui" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GenI" or (errorHandler.buildDepError "GenI"))
            (hsPkgs."geni-gui" or (errorHandler.buildDepError "geni-gui"))
          ];
          buildable = true;
        };
      };
    };
  }