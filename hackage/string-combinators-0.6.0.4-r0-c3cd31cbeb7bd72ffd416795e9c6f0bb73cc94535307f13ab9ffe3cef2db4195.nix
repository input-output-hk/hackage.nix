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
      identifier = { name = "string-combinators"; version = "0.6.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2009-2011 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/basvandijk/string-combinators";
      url = "";
      synopsis = "Polymorphic functions to build and combine stringlike values";
      description = "@string-combinators@ provides handy polymorphic functions\nto build and combine string-like values.\n\nAll functions are polymorphic in their string-like type\nbut usually have a 'Monoid' or 'IsString' constraint.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          ];
        buildable = true;
        };
      };
    }