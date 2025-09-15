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
      specVersion = "3.0";
      identifier = { name = "ZipperAG"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Pedro Martins";
      maintainer = "José Nuno Macedo <zenunomacedo@gmail.com>";
      author = "Pedro Martins <pedromartins4@gmail.com>, José Nuno Macedo <zenunomacedo@gmail.com>";
      homepage = "www.di.uminho.pt/~prmartins";
      url = "";
      synopsis = "An implementation of Attribute Grammars using Functional Zippers";
      description = "An implementation of Attribute Grammars using Functional Zippers, includes some usage examples. For more information, refer to works such as \"Zipper-based Attribute Grammars and their Extensions\". ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syz" or (errorHandler.buildDepError "syz"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ];
        buildable = true;
      };
    };
  }