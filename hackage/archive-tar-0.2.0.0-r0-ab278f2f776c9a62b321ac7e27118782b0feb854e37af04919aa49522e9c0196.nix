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
    flags = { development = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "archive-tar"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Vanessa McHale";
      maintainer = "vanessa.mchale@iohk.io";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Common interface using the tar package";
      description = "Backpack-ified way to use [tar](http://hackage.haskell.org/package/tar) bindings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          ];
        buildable = true;
        };
      };
    }