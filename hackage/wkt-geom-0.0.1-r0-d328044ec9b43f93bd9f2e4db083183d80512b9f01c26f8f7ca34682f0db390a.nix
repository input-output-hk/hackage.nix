{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wkt-geom";
        version = "0.0.1";
      };
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
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.geojson)
          (hsPkgs.scientific)
          (hsPkgs.trifecta)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "wkt-geom-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.bytestring)
            (hsPkgs.geojson)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.scientific)
            (hsPkgs.trifecta)
            (hsPkgs.vector)
            (hsPkgs.wkt-geom)
          ];
        };
      };
    };
  }