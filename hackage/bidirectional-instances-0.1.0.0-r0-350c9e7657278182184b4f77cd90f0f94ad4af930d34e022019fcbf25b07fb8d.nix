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
      identifier = { name = "bidirectional-instances"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Lev Dvorkin (c) 2022";
      maintainer = "lev_135@mail.ru";
      author = "Lev135";
      homepage = "https://github.com/Lev135/bidirectional-instances";
      url = "";
      synopsis = "Make instance constraints bidirectional";
      description = "This package contains class for bidirectional instances \nand TH methods for generating instances for it.\nSee /README.md/ for more information";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bidirectional-instances" or (errorHandler.buildDepError "bidirectional-instances"))
          ];
          buildable = true;
        };
      };
    };
  }