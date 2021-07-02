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
    flags = { buildexample = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-checked-exceptions-core";
        version = "2.2.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "2017-2021 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/servant-checked-exceptions";
      url = "";
      synopsis = "Checked exceptions for Servant APIs.";
      description = "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."world-peace" or (errorHandler.buildDepError "world-peace"))
          ];
        buildable = true;
        };
      exes = {
        "servant-checked-exceptions-core-example-docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-checked-exceptions-core" or (errorHandler.buildDepError "servant-checked-exceptions-core"))
            (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.buildexample then true else false;
          };
        };
      tests = {
        "servant-checked-exceptions-core-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."servant-checked-exceptions-core" or (errorHandler.buildDepError "servant-checked-exceptions-core"))
            ];
          buildable = (if compiler.isGhcjs && true
            then false
            else true) && (if compiler.isGhc && (compiler.version).lt "9.0.1"
            then true
            else false);
          };
        };
      };
    }