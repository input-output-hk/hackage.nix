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
    flags = { splitbase = true; usedouble = true; useframework = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hCsound"; version = "0.2.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "John W. Lato, jwlato@gmail.com";
      author = "John W. Lato, jwlato@gmail.com";
      homepage = "";
      url = "";
      synopsis = "interface to CSound API";
      description = "Haskell interface to Csound API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        libs = [
          (pkgs."sndfile" or (errorHandler.sysDepError "sndfile"))
          ] ++ (pkgs.lib).optionals (!(system.isOsx && flags.useframework)) (if flags.usedouble
          then [ (pkgs."csound64" or (errorHandler.sysDepError "csound64")) ]
          else [ (pkgs."csound32" or (errorHandler.sysDepError "csound32")) ]);
        frameworks = (pkgs.lib).optionals (system.isOsx && flags.useframework) (if flags.usedouble
          then [
            (pkgs."CsoundLib64" or (errorHandler.sysDepError "CsoundLib64"))
            ]
          else [
            (pkgs."CsoundLib" or (errorHandler.sysDepError "CsoundLib"))
            ]);
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }