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
      identifier = { name = "harfbuzz-pure"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "opensource@openwork.nz";
      author = "Adrian Cochrane";
      homepage = "https://harfbuzz.github.io/";
      url = "";
      synopsis = "Pure-functional Harfbuzz language bindings";
      description = "HarfBuzz is a text shaping library. Using the HarfBuzz library allows programs to convert a sequence of Unicode input into properly formatted and positioned glyph output—for any writing system and language.";
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