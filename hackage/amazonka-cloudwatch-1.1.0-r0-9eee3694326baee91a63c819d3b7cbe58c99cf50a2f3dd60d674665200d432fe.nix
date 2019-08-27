let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-cloudwatch"; version = "1.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon CloudWatch SDK.";
      description = "This is the /Amazon CloudWatch API Reference/. This guide provides\ndetailed information about Amazon CloudWatch actions, data types,\nparameters, and errors. For detailed information about Amazon CloudWatch\nfeatures and their associated API calls, go to the\n<http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide Amazon CloudWatch Developer Guide>.\nAmazon CloudWatch is a web service that enables you to publish, monitor,\nand manage various metrics, as well as configure alarm actions based on\ndata from metrics. For more information about this product go to\n<http://aws.amazon.com/cloudwatch>.\nFor information about the namespace, metric names, and dimensions that\nother Amazon Web Services products use to send metrics to Cloudwatch, go\nto\n<http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html Amazon CloudWatch Metrics, Namespaces, and Dimensions Reference>\nin the /Amazon CloudWatch Developer Guide/.\nUse the following links to get started using the /Amazon CloudWatch API\nReference/:\n-   <http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Operations.html Actions>:\nAn alphabetical list of all Amazon CloudWatch actions.\n-   <http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Types.html Data Types>:\nAn alphabetical list of all Amazon CloudWatch data types.\n-   <http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CommonParameters.html Common Parameters>:\nParameters that all Query actions can use.\n-   <http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CommonErrors.html Common Errors>:\nClient and server errors that all actions can return.\n-   <http://docs.aws.amazon.com/general/latest/gr/index.html?rande.html Regions and Endpoints>:\nItemized regions and endpoints for all AWS products.\n-   <http://monitoring.amazonaws.com/doc/2010-08-01/CloudWatch.wsdl WSDL Location>:\nhttp:\\/\\/monitoring.amazonaws.com\\/doc\\/2010-08-01\\/CloudWatch.wsdl\nIn addition to using the Amazon CloudWatch API, you can also use the\nfollowing SDKs and third-party libraries to access Amazon CloudWatch\nprogrammatically.\n-   <http://aws.amazon.com/documentation/sdkforjava/ AWS SDK for Java Documentation>\n-   <http://aws.amazon.com/documentation/sdkfornet/ AWS SDK for .NET Documentation>\n-   <http://aws.amazon.com/documentation/sdkforphp/ AWS SDK for PHP Documentation>\n-   <http://aws.amazon.com/documentation/sdkforruby/ AWS SDK for Ruby Documentation>\nDevelopers in the AWS developer community also provide their own\nlibraries, which you can find at the following AWS developer centers:\n-   <http://aws.amazon.com/java/ AWS Java Developer Center>\n-   <http://aws.amazon.com/php/ AWS PHP Developer Center>\n-   <http://aws.amazon.com/python/ AWS Python Developer Center>\n-   <http://aws.amazon.com/ruby/ AWS Ruby Developer Center>\n-   <http://aws.amazon.com/net/ AWS Windows and .NET Developer Center>\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CloudWatch\" and the <http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      tests = {
        "amazonka-cloudwatch-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (buildDepError "amazonka-test"))
            (hsPkgs."amazonka-cloudwatch" or (buildDepError "amazonka-cloudwatch"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      };
    }