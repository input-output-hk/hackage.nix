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
      specVersion = "1.8";
      identifier = { name = "currency"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2011-2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/currency-haskell";
      url = "";
      synopsis = "Types representing standard and non-standard currencies";
      description = "This package provides two types for representing currencies, one that\ncan only represent ISO4217 currencies, and one that can also represent\nnonstandard currencies.\n\nAn IsString instance is provided for convenience on the general type.\n\nInstances of Eq, Ord, and, Hashable are provided for use as keys.\n\nThe Enum instance provides a mapping to/from ISO4217 numeric codes for\ncurrencies that have such a code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."iso3166-country-codes" or (errorHandler.buildDepError "iso3166-country-codes"))
        ];
        buildable = true;
      };
    };
  }