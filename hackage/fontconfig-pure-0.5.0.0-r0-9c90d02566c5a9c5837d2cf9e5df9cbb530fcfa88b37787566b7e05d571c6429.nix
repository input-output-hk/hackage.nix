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
      identifier = { name = "fontconfig-pure"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "alcinnz@argonaut-constellation.org";
      author = "Adrian Cochrane";
      homepage = "https://www.freedesktop.org/wiki/Software/fontconfig/";
      url = "";
      synopsis = "Resolves font descriptions to font libraries, including ones installed on your freedesktop (Linux or BSD system).";
      description = "Resolves font descriptions to font libraries, including ones installed on your freedesktop (Linux or BSD system).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
          (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."msgpack" or (errorHandler.buildDepError "msgpack"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
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
        "fontconfig-pure-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fontconfig-pure" or (errorHandler.buildDepError "fontconfig-pure"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."msgpack" or (errorHandler.buildDepError "msgpack"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
            (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
          ];
          buildable = true;
        };
      };
    };
  }