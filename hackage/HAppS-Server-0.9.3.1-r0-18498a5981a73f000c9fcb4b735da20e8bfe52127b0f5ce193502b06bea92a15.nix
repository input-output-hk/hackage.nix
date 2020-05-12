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
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HAppS-Server"; version = "0.9.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "AlexJacobson@HAppS.org";
      author = "HAppS LLC";
      homepage = "";
      url = "";
      synopsis = "Web related tools and services.";
      description = "Web framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."HAppS-Data" or (errorHandler.buildDepError "HAppS-Data"))
          (hsPkgs."HAppS-Util" or (errorHandler.buildDepError "HAppS-Util"))
          (hsPkgs."HAppS-State" or (errorHandler.buildDepError "HAppS-State"))
          (hsPkgs."HAppS-IxSet" or (errorHandler.buildDepError "HAppS-IxSet"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs."syb" or (errorHandler.buildDepError "syb"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optional (flags.base4) (hsPkgs."base" or (errorHandler.buildDepError "base"));
        buildable = true;
        };
      };
    }