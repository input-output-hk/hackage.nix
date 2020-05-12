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
      specVersion = "1.6";
      identifier = { name = "diagrams-cairo"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "Cairo backend for diagrams drawing EDSL";
      description = "A full-featured backend for rendering\ndiagrams using the cairo rendering engine.\nTo get started, see \"Diagrams.Backend.Cairo.CmdLine\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optionals (compiler.isGhc && ((compiler.version).ge "7.2.1" && (compiler.version).lt "7.4")) [
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          ]) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.4.1") [
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          ];
        buildable = true;
        };
      };
    }