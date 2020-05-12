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
    flags = { stringable = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "string-combinators"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Polymorphic functions to build and combine stringlike values";
      description = "string-combinators provides handy polymorphic functions\nto build and combine stringlike values.\n\nAll functions are polymorphic in their string type\nbut usually have a Monoid or IsString constraint.\n\nConditionally a module Data.String.Stringable is provided.\nThis module exports a typeclass Stringable\nfor converting values to and from Strings.\nA bunch of instances is defined\nfor some common stringlike types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optionals (flags.stringable) [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dstring" or (errorHandler.buildDepError "dstring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }