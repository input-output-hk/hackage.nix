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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-macosx or (pkgs.buildPackages.cabal-macosx or (errorHandler.buildToolDepError "cabal-macosx")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.buildToolDepError "process")))
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