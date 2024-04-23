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
      specVersion = "1.10";
      identifier = { name = "servant-exceptions-server"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2017-2020 Sebastian Nagel";
      maintainer = "sebastian.nagel@ncoding.at";
      author = "Sebastian Nagel";
      homepage = "https://github.com/ch1bo/servant-exceptions#readme";
      url = "";
      synopsis = "Extensible exceptions for servant API servers";
      description = "`servant-exceptions-server` provides the `servant-server` related\nparts for `servant-exceptions`. Namely it catches\ndeclared exceptions and renders responses using the\nhandler content-type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-exceptions" or (errorHandler.buildDepError "servant-exceptions"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
    };
  }