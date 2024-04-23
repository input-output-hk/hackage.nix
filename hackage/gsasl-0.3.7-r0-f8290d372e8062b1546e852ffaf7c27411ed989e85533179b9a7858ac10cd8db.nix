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
      identifier = { name = "gsasl"; version = "0.3.7"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://git.sr.ht/~singpolyma/gsasl-haskell";
      url = "";
      synopsis = "Bindings for GNU libgsasl";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libgsasl" or (errorHandler.pkgConfDepError "libgsasl"))
        ];
        buildable = true;
      };
    };
  }