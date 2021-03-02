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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "shuffle"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "uhc-developers@lists.science.uu.nl";
      author = "UHC Team";
      homepage = "https://github.com/UU-ComputerScience/shuffle";
      url = "";
      synopsis = "Shuffle tool for UHC";
      description = "Shuffle tool used by UHC (Utrecht Haskell Compiler)";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.uuagc-cabal or (pkgs.buildPackages.uuagc-cabal or (errorHandler.setupDepError "uuagc-cabal")))
        (hsPkgs.buildPackages.uuagc or (pkgs.buildPackages.uuagc or (errorHandler.setupDepError "uuagc")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
          (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
          (hsPkgs."uhc-util" or (errorHandler.buildDepError "uhc-util"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        buildable = true;
        };
      exes = {
        "shuffle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shuffle" or (errorHandler.buildDepError "shuffle"))
            ];
          buildable = true;
          };
        };
      };
    }