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
      specVersion = "1.8";
      identifier = { name = "ec2-signature"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yusuke Nomura<yunomu@gmail.com>";
      author = "Yusuke Nomura<yunomu@gmail.com>";
      homepage = "https://github.com/worksap-ate/ec2-signature";
      url = "";
      synopsis = "The Amazon EC2 style signature calculator.";
      description = "The Amazon EC2 style signature calculator.\n<http://docs.aws.amazon.com/general/latest/gr/signature-version-2.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
        ];
        buildable = true;
      };
    };
  }