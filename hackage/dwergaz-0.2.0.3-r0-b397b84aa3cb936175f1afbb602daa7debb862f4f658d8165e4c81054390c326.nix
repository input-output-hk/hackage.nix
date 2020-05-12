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
      identifier = { name = "dwergaz"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017-2018, Henry Till";
      maintainer = "henrytill@gmail.com";
      author = "Henry Till";
      homepage = "https://github.com/xngns/dwergaz";
      url = "";
      synopsis = "A minimal testing library";
      description = "dwergaz is a minimal testing library with no external dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
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