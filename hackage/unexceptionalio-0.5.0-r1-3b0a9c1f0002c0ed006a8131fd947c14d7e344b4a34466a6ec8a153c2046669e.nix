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
      identifier = { name = "unexceptionalio"; version = "0.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2013-2018 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/unexceptionalio";
      url = "";
      synopsis = "IO without any non-error, synchronous exceptions";
      description = "When you've caught all the exceptions that can be handled safely,\nthis is what you're left with.\n\nIt is intended that you use qualified imports with this library.\n\n> import UnexceptionalIO (UIO)\n> import qualified UnexceptionalIO as UIO\n\nYou may also wish to investigate unexceptionalio-trans if you like\nmonad transformers.\n\nBlog post: http://sngpl.ma/p4uT0";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }