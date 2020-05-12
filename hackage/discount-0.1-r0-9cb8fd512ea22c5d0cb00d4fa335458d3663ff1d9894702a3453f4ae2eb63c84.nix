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
      identifier = { name = "discount"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "phurst@amateurtopologist.com";
      author = "Patrick Hurst";
      homepage = "http://github.com/veinor/discount";
      url = "";
      synopsis = "Haskell bindings to the discount Markdown library.";
      description = "Discount is a thin wrapper around the discount library <http://www.pell.portland.or.us/~orc/Code/discount/> for parsing Markdown. It supports both additional features such as definition lists and tables, while also having a mode for pure Markdown.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."markdown" or (errorHandler.sysDepError "markdown")) ];
        buildable = true;
        };
      };
    }