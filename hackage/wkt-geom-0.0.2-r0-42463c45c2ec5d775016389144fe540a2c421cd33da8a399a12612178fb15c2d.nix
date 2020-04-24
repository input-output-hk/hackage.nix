{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wkt-geom"; version = "0.0.2"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."geojson" or ((hsPkgs.pkgs-errors).buildDepError "geojson"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "wkt-geom-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."geojson" or ((hsPkgs.pkgs-errors).buildDepError "geojson"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."wkt-geom" or ((hsPkgs.pkgs-errors).buildDepError "wkt-geom"))
            ];
          buildable = true;
          };
        };
      };
    }