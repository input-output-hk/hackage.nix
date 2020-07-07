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
      identifier = { name = "noli"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "endisukaj@gmail.com";
      author = "Endi Sukaj";
      homepage = "https://github.com/Endi1/noli#readme";
      url = "";
      synopsis = "A static site generator";
      description = "Yet Another static site generator for Haskell. This time easier to use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."cmark" or (errorHandler.buildDepError "cmark"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          ];
        buildable = true;
        };
      };
    }