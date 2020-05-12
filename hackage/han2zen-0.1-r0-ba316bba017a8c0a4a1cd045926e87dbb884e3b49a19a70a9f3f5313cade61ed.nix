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
      identifier = { name = "han2zen"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Wataru Yamada";
      maintainer = "Wataru Yamada <wa.wktk.2525@gmail.com>";
      author = "Wataru Yamada";
      homepage = "https://github.com/wataru86/han2zen#readme";
      url = "";
      synopsis = "Convert Halfwidth Katakana to Fullwidth Katakana.";
      description = "This package provides functions to convert Halfwidth Katakana to Fullwidth Katakana.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "han2zen-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."han2zen" or (errorHandler.buildDepError "han2zen"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }