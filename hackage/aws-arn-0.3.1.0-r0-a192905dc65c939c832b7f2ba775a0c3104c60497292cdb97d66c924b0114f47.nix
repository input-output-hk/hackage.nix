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
      identifier = { name = "aws-arn"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2020-2022 Bellroy Pty Ltd";
      maintainer = "Bellroy Tech Team <haskell@bellroy.com>";
      author = "Bellroy Tech Team <haskell@bellroy.com>";
      homepage = "";
      url = "";
      synopsis = "Types and optics for manipulating Amazon Resource Names (ARNs)";
      description = "This library provides a type representing [Amazon Resource Names\n(ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html),\nand parsing/unparsing functions for them. The provided prisms, when\ncombined with [generic-lens](https://hackage.haskell.org/package/generic-lens)\nor [generic-optics](https://hackage.haskell.org/package/generic-optics),\nmake it very convenient to rewrite parts of ARNs.\n\nStart reading at the \"Network.AWS.ARN\" module, which defines the\ncore data type and includes some examples.\n\nThe @ARN@ type is not designed to be a 100% correct-by-construction\nrepresentation of only valid ARNs; it is designed to be a\nlightweight way to destructure and reassemble ARNs to be used in\nplace of string munging.\n\nThe library aims to provide additional parsers for destructuring the\n\"resource\" part of an ARN, but many are missing right now. PRs to\nadd this support for more AWS resource types are __especially__\nwelcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aws-arn" or (errorHandler.buildDepError "aws-arn"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }