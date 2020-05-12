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
      specVersion = "1.2";
      identifier = { name = "colour"; version = "2.3.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Russell O'Connor";
      homepage = "http://www.haskell.org/haskellwiki/Colour";
      url = "";
      synopsis = "A model for human colour/color perception";
      description = "This package provides a data type for colours and transparency.\nColours can be blended and composed.\nVarious colour spaces are supported.\nA module of colour names (\"Data.Colour.Names\") is provided.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }