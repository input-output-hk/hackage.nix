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
      identifier = { name = "really-simple-xml-parser"; version = "0.3.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ckkashyap@gmail.com";
      author = "CK Kashyap";
      homepage = "http://website-ckkashyap.rhcloud.com";
      url = "";
      synopsis = "A really simple XML parser";
      description = "A really simple and trivial XML parser using the Parsec library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }