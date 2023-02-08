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
      identifier = { name = "harfbuzz-pure"; version = "1.0.3.1"; };
      license = "MIT";
      copyright = "Language bindings © 2022, 2023 Adrian Cochrane";
      maintainer = "~alcinnz/harfbuzz-pure@todo.argonaut-constellation.org";
      author = "Adrian Cochrane";
      homepage = "https://harfbuzz.github.io/";
      url = "";
      synopsis = "Pure-functional Harfbuzz language bindings";
      description = "HarfBuzz is a text shaping library. Using the HarfBuzz library allows programs to convert a sequence of Unicode input into properly formatted and positioned glyph output; for practically any writing system and written language.\nNOTE: You may need to install Harfbuzz 3.3.0 (Jan 2022) or newer from source, it hasn't been widely packaged yet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
          ];
        pkgconfig = [
          (pkgconfPkgs."harfbuzz" or (errorHandler.pkgConfDepError "harfbuzz"))
          ];
        buildable = true;
        };
      exes = {
        "shape-text" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."harfbuzz-pure" or (errorHandler.buildDepError "harfbuzz-pure"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }