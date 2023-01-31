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
      identifier = { name = "fontconfig-pure"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "adrian@openwork.nz";
      author = "Adrian Cochrane";
      homepage = "https://www.freedesktop.org/wiki/Software/fontconfig/";
      url = "";
      synopsis = "Pure-functional language bindings to FontConfig";
      description = "Resolves font descriptions to font libraries, including ones installed on your freedesktop (Linux or BSD system).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          ];
        pkgconfig = [
          (pkgconfPkgs."fontconfig" or (errorHandler.pkgConfDepError "fontconfig"))
          ];
        buildable = true;
        };
      exes = {
        "fontconfig-pure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fontconfig-pure" or (errorHandler.buildDepError "fontconfig-pure"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-fontconfig" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fontconfig-pure" or (errorHandler.buildDepError "fontconfig-pure"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }