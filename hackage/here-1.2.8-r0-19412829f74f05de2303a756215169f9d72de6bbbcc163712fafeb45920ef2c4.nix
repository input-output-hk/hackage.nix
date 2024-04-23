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
      identifier = { name = "here"; version = "1.2.8"; };
      license = "BSD-3-Clause";
      copyright = "©2013 Taylor M. Hedberg, ©2014 Google Inc.";
      maintainer = "t@tmh.cc";
      author = "Taylor M. Hedberg";
      homepage = "https://github.com/tmhedberg/here";
      url = "";
      synopsis = "Here docs & interpolated strings via quasiquotation";
      description = "Here docs & interpolated strings via quasiquotation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }