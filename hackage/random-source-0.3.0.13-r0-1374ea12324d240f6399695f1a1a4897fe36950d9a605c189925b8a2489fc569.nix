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
    flags = { base4 = true; mtl2 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "random-source"; version = "0.3.0.13"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/random-fu";
      url = "";
      synopsis = "Generic basis for random number generators";
      description = "Random number generation based on entropy sources\nable to produce a small but well-defined set of\nprimitive variates.  Also includes facilities for\n\\\"completing\\\" partial implementations, making it\neasy to define new entropy sources in a way that\nis naturally forward-compatible.\nNow DEPRECATED: see [README](#readme) for further\ndetails.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."flexible-defaults" or (errorHandler.buildDepError "flexible-defaults"))
          (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."stateref" or (errorHandler.buildDepError "stateref"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-extras" or (errorHandler.buildDepError "th-extras"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))) ++ [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ]) ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
    };
  }