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
      specVersion = "1.6";
      identifier = { name = "rex"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Michael Sloan 2011";
      maintainer = "Michael Sloan <mgsloan at gmail>";
      author = "Michael Sloan";
      homepage = "http://github.com/mgsloan/rex";
      url = "";
      synopsis = "A quasi-quoter for typeful results of regex captures.";
      description = "Provides a quasi-quoter for regular expressions which\nyields a tuple, of appropriate arity and types,\nrepresenting the results of the captures.  Allows the user\nto specify parsers for captures as inline Haskell.  Can\nalso be used to provide typeful pattern matching in\nfunction definitions and pattern matches.  Also, it\nprecompiles the regular expressions into a PCRE\ncompiled byte-array representation, at compile time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }