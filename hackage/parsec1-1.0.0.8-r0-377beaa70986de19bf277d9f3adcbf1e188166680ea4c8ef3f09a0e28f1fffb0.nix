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
      identifier = { name = "parsec1"; version = "1.0.0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chr.maeder@web.de";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Portable monadic parser combinators";
      description = "Parsec is designed from scratch as an industrial-strength parser\nlibrary.  It is simple, safe, well-known, has extensive libraries,\ngood error messages, and is also fast.\n\nThis package is the core haskell98 part of the parsec2\npackage as originally created by Daan Leijen. It is intended to\npreserve its simplicity and portability.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }