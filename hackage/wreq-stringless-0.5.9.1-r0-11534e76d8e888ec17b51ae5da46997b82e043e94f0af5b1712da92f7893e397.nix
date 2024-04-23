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
      identifier = { name = "wreq-stringless"; version = "0.5.9.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Juergen Keck <jhyphenkeck@gmail.com>";
      author = "Juergen Keck";
      homepage = "https://github.com/j-keck/wreq-stringless#readme";
      url = "";
      synopsis = "Simple wrapper to use wreq without Strings";
      description = "This library wraps all functions from @Network.Wreq@ which expects a 'String'\nand replaces the 'String' Type with the \"Network.Wreq.StringLess.StringLike\" Type-Class.\n\nInstances for \"Network.Wreq.StringLess.StringLike\" are given for:\n\n* \"Data.Text\"\n\n* \"Data.Text.Lazy\"\n\n* \"Data.ByteString.UTF8\"\n\n* \"Data.ByteString.Lazy.UTF8\"\n\nSo you can use any of this types instead of 'String'.\n\nTo use this library, replace your the @wreq@ dependency from your @cabal@\nfile with @wreq-stringless@ and import \"Network.Wreq.StringLess\" instead\nof @Network.Wreq@.\n\nThe '0.5.9.x' version of this library wraps the '0.5.x.x' version of @wreq@.\n\nsee <https://github.com/j-keck/wreq-stringless/tree/master/examples> for examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
        ];
        buildable = true;
      };
    };
  }