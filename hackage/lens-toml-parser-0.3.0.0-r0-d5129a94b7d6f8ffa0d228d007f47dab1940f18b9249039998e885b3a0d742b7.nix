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
      specVersion = "1.10";
      identifier = { name = "lens-toml-parser"; version = "0.3.0.0"; };
      license = "ISC";
      copyright = "Copyright (c) 2017-2024, Henry Till";
      maintainer = "henrytill@gmail.com";
      author = "Henry Till";
      homepage = "https://github.com/henrytill/lens-toml-parser";
      url = "";
      synopsis = "Lenses for toml-parser";
      description = "This library provides lenses for toml-parser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."toml-parser" or (errorHandler.buildDepError "toml-parser"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dwergaz" or (errorHandler.buildDepError "dwergaz"))
            (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."toml-parser" or (errorHandler.buildDepError "toml-parser"))
            (hsPkgs."lens-toml-parser" or (errorHandler.buildDepError "lens-toml-parser"))
          ];
          buildable = true;
        };
      };
    };
  }