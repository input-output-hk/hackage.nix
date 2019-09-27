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
      identifier = { name = "amazonka-cognito-identity"; version = "1.3.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Cognito Identity SDK.";
      description = "Amazon Cognito\nAmazon Cognito is a web service that delivers scoped temporary\ncredentials to mobile devices and other untrusted environments. Amazon\nCognito uniquely identifies a device and supplies the user with a\nconsistent identity over the lifetime of an application.\nUsing Amazon Cognito, you can enable authentication with one or more\nthird-party identity providers (Facebook, Google, or Login with Amazon),\nand you can also choose to support unauthenticated access from your app.\nCognito delivers a unique identifier for each user and acts as an OpenID\ntoken provider trusted by AWS Security Token Service (STS) to access\ntemporary, limited-privilege AWS credentials.\nTo provide end-user credentials, first make an unsigned call to GetId.\nIf the end user is authenticated with one of the supported identity\nproviders, set the @Logins@ map with the identity provider token.\n@GetId@ returns a unique identifier for the user.\nNext, make an unsigned call to GetCredentialsForIdentity. This call\nexpects the same @Logins@ map as the @GetId@ call, as well as the\n@IdentityID@ originally returned by @GetId@. Assuming your identity pool\nhas been configured via the SetIdentityPoolRoles operation,\n@GetCredentialsForIdentity@ will return AWS credentials for your use. If\nyour pool has not been configured with @SetIdentityPoolRoles@, or if you\nwant to follow legacy flow, make an unsigned call to GetOpenIdToken,\nwhich returns the OpenID token necessary to call STS and retrieve AWS\ncredentials. This call expects the same @Logins@ map as the @GetId@\ncall, as well as the @IdentityID@ originally returned by @GetId@. The\ntoken returned by @GetOpenIdToken@ can be passed to the STS operation\n<http://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoleWithWebIdentity.html AssumeRoleWithWebIdentity>\nto retrieve AWS credentials.\nIf you want to use Amazon Cognito in an Android, iOS, or Unity\napplication, you will probably want to make API calls via the AWS Mobile\nSDK. To learn more, see the\n<http://docs.aws.amazon.com/mobile/index.html AWS Mobile SDK Developer Guide>.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.CognitoIdentity\" and the <http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html AWS API Reference>\nto get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "amazonka-cognito-identity-test" = {
          depends = [
            (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
            (hsPkgs."amazonka-test" or (buildDepError "amazonka-test"))
            (hsPkgs."amazonka-cognito-identity" or (buildDepError "amazonka-cognito-identity"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }