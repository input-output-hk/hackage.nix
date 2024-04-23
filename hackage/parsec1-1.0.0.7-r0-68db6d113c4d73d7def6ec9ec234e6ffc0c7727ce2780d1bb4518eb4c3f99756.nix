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
      identifier = { name = "parsec1"; version = "1.0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chr.maeder@web.de";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Portable monadic parser combinators";
      description = "Parsec is designed from scratch as an industrial-strength parser\nlibrary.  It is simple, safe, well-known, has extensive libraries,\ngood error messages, and is also fast.\n\nThis package is the core haskell98 part of the parsec2\npackage as originally created by Daan Leijen. It is intended to\npreserve its simplicity and portability.\n\nThis version differs from the pervious one only by a MonadFail\ninstance to let it compile with ghc-8.8.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }