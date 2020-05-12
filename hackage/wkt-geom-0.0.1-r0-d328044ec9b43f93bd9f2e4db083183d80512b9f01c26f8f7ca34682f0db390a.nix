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
      identifier = { name = "wkt-geom"; version = "0.0.1"; };
      license = "Apache-2.0";
      copyright = "2017-2018 Wkt-Geom Project";
      maintainer = "andrewfnewman@gmail.com";
      author = "Andrew Newmnan, Dominic Endrei";
      homepage = "https://github.com/indicatrix/wkt-geom#readme";
      url = "";
      synopsis = "A parser of WKT, WKB and eWKB.";
      description = "Well Known Text (WKT), Well Known Binary and the Postgresql extension Extended Well Know Binary (eWKB) are vector geometry representations.\n\nThe text or binary representations are parsed and turned into their GeoJSON representations.  The binary representations use vectors throughout\nwhereas the text representation still uses a list and then is converted to a vector representation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
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
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."geojson" or (errorHandler.buildDepError "geojson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wkt-geom" or (errorHandler.buildDepError "wkt-geom"))
            ];
          buildable = true;
          };
        };
      };
    }