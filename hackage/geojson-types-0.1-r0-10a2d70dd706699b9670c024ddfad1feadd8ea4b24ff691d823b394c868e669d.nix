{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "geojson-types"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Markus Barenhoff";
      maintainer = "Markus Barenhoff <mbarenh@alios.org>";
      author = "Markus Barenhoff";
      homepage = "https://github.com/alios/geosjon-types";
      url = "";
      synopsis = "GeoJSON data types including JSON/BSON conversion.";
      description = "Provides data types, lens operators and (de)serialization\nof GeoJSON data to/from JSON and BSON using aeson and bson.\n\nThis library uses a the lens library a lot. It provides\n'Iso' / 'Prism' to convert from and to GeoJSON objects.\n\n/e.g./ to convert a latitude/longitude given as a pair of\n'Double' to a 'Position', use the '_Position' 'Iso' as a\n'Getter' on that pair:\n\n> _Position :: BaseType t => (t, t) -> Position t\n>\n> pos :: Position Double\n> pos = (57.324, 7.2342) ^. _Position\n\nto then convert it to a 'Point' object use '_Point':\n\n> _Point :: Iso' (Position t) (GeoJSON Point t)\n>\n> p :: GeoJSON Point Double\n> p = pos ^. _Point\n>\n> ps :: GeoJSON MultiPoint Double\n> ps = [p,p,p,p] ^. _MultiPoint\n\nThe library also provides type classes for working polymorphic\nover user defined data types.\n\n/e.g./ for a data type:\n\n> data Location =\n>   Location {\n>     locationName :: String,\n>     locationLat :: Double,\n>     locationLon :: Double\n>   }\n\none can implement the type class 'HasGeoJSON' to provide a\n'Getter' to a any GeoJSON object. In this example a 'Point'.\n\n> instance HasGeoJSON Point Double Location where\n>  geoJSON = to \$ \\loc ->\n>    (locationLat loc, locationLon loc) ^. _Position . _Point";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.aeson)
          (hsPkgs.bson)
          (hsPkgs.text)
          ];
        };
      };
    }