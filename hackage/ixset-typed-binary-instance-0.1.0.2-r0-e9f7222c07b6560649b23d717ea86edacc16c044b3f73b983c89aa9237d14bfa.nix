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
      identifier = {
        name = "ixset-typed-binary-instance";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan,firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Binary instance for ixset-typed.";
      description = "Please see the README on GitHub at <https://gitlab.com/homotopic-tech/ixset-typed-binary-instance/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."ixset-typed" or (errorHandler.buildDepError "ixset-typed"))
        ];
        buildable = true;
      };
    };
  }