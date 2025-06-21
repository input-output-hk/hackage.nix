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
      specVersion = "2.4";
      identifier = { name = "dwergaz"; version = "0.3.1.0"; };
      license = "ISC";
      copyright = "Copyright (c) 2017-2025, Henry Till";
      maintainer = "henrytill@gmail.com";
      author = "Henry Till";
      homepage = "https://github.com/henrytill/dwergaz";
      url = "";
      synopsis = "A minimal testing library";
      description = "dwergaz is a minimal testing library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dwergaz" or (errorHandler.buildDepError "dwergaz"))
          ];
          buildable = true;
        };
      };
    };
  }