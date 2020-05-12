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
      specVersion = "1.8";
      identifier = { name = "secret-santa"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "rodrigosetti@gmail.com";
      author = "Rodrigo Setti";
      homepage = "https://github.com/rodrigosetti/secret-santa";
      url = "";
      synopsis = "Secret Santa game assigner using QR-Codes";
      description = "Secret Santa game assigner using QR-Codes\nReads a list of friends from the standard input (or a\nfile) and renders to a specified output file (or\n\"output.pdf\" if not specified) all assignments of gift\ngivers and their corresponding receivers encoded in a\nQR-Code.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "secret-santa" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."haskell-qrencode" or (errorHandler.buildDepError "haskell-qrencode"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }