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
      identifier = { name = "servant-exceptions"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Sebastian Nagel";
      maintainer = "sebastian.nagel@ncoding.at";
      author = "Sebastian Nagel";
      homepage = "https://github.com/ch1bo/servant-exceptions#readme";
      url = "";
      synopsis = "Extensible exceptions for servant APIs";
      description = "`servant-exceptions` provides a `Throw` combinator to declare what\ntypes of errors an API might throw. The server\nimplementation catches them and allows for a canonical\nencoding using servant content-type machinery.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }