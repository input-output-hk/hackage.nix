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
      specVersion = "1.12";
      identifier = { name = "numeric-domains"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Michael Szvetits";
      maintainer = "typedbyte@qualified.name";
      author = "Michael Szvetits";
      homepage = "https://github.com/typedbyte/numeric-domains#readme";
      url = "";
      synopsis = "Numeric Domains";
      description = "Please see the README on GitHub at <https://github.com/typedbyte/numeric-domains#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }