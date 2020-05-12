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
      identifier = { name = "powerqueue-distributed"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/powerqueue#readme";
      url = "";
      synopsis = "A distributed worker backend for powerqueu";
      description = "A distributed worker backend for powerqueu";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."powerqueue" or (errorHandler.buildDepError "powerqueue"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cereal-conduit" or (errorHandler.buildDepError "cereal-conduit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."timespan" or (errorHandler.buildDepError "timespan"))
          ];
        buildable = true;
        };
      tests = {
        "powerqueue-distributed-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."powerqueue" or (errorHandler.buildDepError "powerqueue"))
            (hsPkgs."powerqueue-distributed" or (errorHandler.buildDepError "powerqueue-distributed"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."timespan" or (errorHandler.buildDepError "timespan"))
            ];
          buildable = true;
          };
        };
      };
    }