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
    flags = { error-check = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wkt-geom"; version = "0.0.9"; };
      license = "Apache-2.0";
      copyright = "2017-2019 Wkt-Geom Project";
      maintainer = "andrewfnewman@gmail.com";
      author = "Andrew Newman, Dominic Endrei";
      homepage = "https://github.com/indicatrix/wkt-geom#readme";
      url = "";
      synopsis = "A parser of WKT, WKB and eWKB.";
      description = "Well Known Text (WKT), Well Known Binary (WKB) and the PostgreSQL extension Extended Well Know Binary (eWKB) are vector geometry representations.\n\nThe text or binary representations are parsed and turned into their GeoJSON representations.  The binary representations use vectors throughout\nwhereas the text representation still uses a list and then is converted to a vector representation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."geojson" or (errorHandler.buildDepError "geojson"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "wkt-geom-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."geojson" or (errorHandler.buildDepError "geojson"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-hspec-hedgehog" or (errorHandler.buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wkt-geom" or (errorHandler.buildDepError "wkt-geom"))
            ];
          buildable = true;
          };
        "wkt-geom-hlint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = true;
          };
        };
      };
    }