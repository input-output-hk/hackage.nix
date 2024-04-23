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
      specVersion = "2.2";
      identifier = { name = "amazonka-elbv2"; version = "2.0"; };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2013-2023 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay+amazonka@gmail.com>, Jack Kelly <jack@jackkelly.name>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Elastic Load Balancing SDK.";
      description = "Derived from API version @2015-12-01@ of the AWS service descriptions, licensed under Apache 2.0.\n\nThe types from this library are intended to be used with <http://hackage.haskell.org/package/amazonka amazonka>,\nwhich provides mechanisms for specifying AuthN/AuthZ information, sending requests, and receiving responses.\n\nIt is recommended to use generic lenses or optics from packages such as <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify optional fields and deconstruct responses.\n\nGenerated lenses can be found in \"Amazonka.ELBV2.Lens\" and are\nsuitable for use with a lens package such as <http://hackage.haskell.org/package/lens lens> or <http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Amazonka.ELBV2\" and the <https://aws.amazon.com/documentation/ AWS documentation> to get started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "amazonka-elbv2-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-elbv2" or (errorHandler.buildDepError "amazonka-elbv2"))
            (hsPkgs."amazonka-test" or (errorHandler.buildDepError "amazonka-test"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }