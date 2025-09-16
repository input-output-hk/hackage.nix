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
      specVersion = "1.12";
      identifier = { name = "Ztrategic"; version = "0.1.0"; };
      license = "MIT";
      copyright = "© 2022 José Nuno Macedo";
      maintainer = "José Nuno Macedo <zenunomacedo@gmail.com>";
      author = "José Nuno Macedo <zenunomacedo@gmail.com>";
      homepage = "https://github.com/SLE-Laboratory/Ztrategic#readme";
      url = "";
      synopsis = "Zipper-based library for strategic programming and attribute grammars.";
      description = "Strategic programming and attribute grammar library built on top of the Zipper data structure. Can be used as a strategic programming library exclusively, with the option of integrating attribute grammars during strategic term traversal. Supports non-memoized and memoized attribute grammars. ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ZipperAG" or (errorHandler.buildDepError "ZipperAG"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monadplus" or (errorHandler.buildDepError "monadplus"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."syz" or (errorHandler.buildDepError "syz"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }