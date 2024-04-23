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
      identifier = { name = "fmt-for-rio"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/fmt-for-rio#readme";
      url = "";
      synopsis = "Adaptor for getting fmt to work with rio";
      description = "Please see the README on GitHub at <https://github.com/cdornan/fmt-for-rio#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."enum-text-rio" or (errorHandler.buildDepError "enum-text-rio"))
        ];
        buildable = true;
      };
    };
  }