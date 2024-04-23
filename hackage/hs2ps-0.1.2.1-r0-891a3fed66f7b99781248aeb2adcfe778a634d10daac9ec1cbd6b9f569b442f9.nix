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
      specVersion = "1.12";
      identifier = { name = "hs2ps"; version = "0.1.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "williamrusnack@gmail.com";
      author = "William Rusnack";
      homepage = "https://bitbucket.org/william_rusnack/hs2ps";
      url = "";
      synopsis = "Translate Haskell types to PureScript";
      description = "Please see the README on BitBucket at <https://bitbucket.org/william_rusnack/hs2ps/src/master/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "hs2ps-types-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs2ps" or (errorHandler.buildDepError "hs2ps"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }