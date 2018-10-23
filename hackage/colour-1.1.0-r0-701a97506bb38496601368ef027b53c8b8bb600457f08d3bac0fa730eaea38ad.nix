{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "colour";
        version = "1.1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Russell O'Connor";
      homepage = "";
      url = "";
      synopsis = "A model for human colour/color perception";
      description = "This package provides a data type for colours and transparency.\nColours can be blended and composed.\nsRGB colour space is supported (\"Data.Colour.SRGB\").\nA module of colour names (\"Data.Colour.Names\") is provided.";
      buildType = "Simple";
    };
    components = {
      "colour" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }