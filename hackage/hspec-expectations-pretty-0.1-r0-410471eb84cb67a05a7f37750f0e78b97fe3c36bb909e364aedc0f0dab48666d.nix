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
      identifier = { name = "hspec-expectations-pretty"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2013 Greg Weber";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Daggerboard Inc, makers of docmunch.com";
      homepage = "https://github.com/hspec/hspec-expectations#readme";
      url = "";
      synopsis = "hspec-expectations with pretty printing on failure";
      description = "Use exactly the same as hspec-expectations. Require a PrettyTerm instance for anything under expectation. To start with you can define a Pretty instance and then just write: instance PrettyTerm YourData using wl-pprint-extras and wl-pprint-terminfo.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
          (hsPkgs."wl-pprint-terminfo" or (errorHandler.buildDepError "wl-pprint-terminfo"))
          (hsPkgs."wl-pprint-extras" or (errorHandler.buildDepError "wl-pprint-extras"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
    };
  }