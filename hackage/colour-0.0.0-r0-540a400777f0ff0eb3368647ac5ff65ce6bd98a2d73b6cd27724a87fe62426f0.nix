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
        version = "0.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "roconnor@theorem.ca";
      author = "Russell O'Connor";
      homepage = "";
      url = "";
      synopsis = "A colour model for human vision";
      description = "This package provides a data type for colours.\nColours can be blended and composed.\nVarious colour spaces are supported.\nA module of colour names (\"Data.Colour.Names\") is provided.";
      buildType = "Simple";
    };
    components = {
      "colour" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }