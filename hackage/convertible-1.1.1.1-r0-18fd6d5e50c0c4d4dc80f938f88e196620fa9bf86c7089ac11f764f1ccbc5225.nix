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
      identifier = { name = "convertible"; version = "1.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2011 John Goerzen";
      maintainer = "Janus Troelsen <ysangkok@gmail.com>";
      author = "John Goerzen";
      homepage = "http://hackage.haskell.org/package/convertible";
      url = "";
      synopsis = "Typeclasses and instances for converting between types";
      description = "convertible provides a typeclass with a single function\nthat is designed to help convert between different types: numeric\nvalues, dates and times, and the like.  The conversions perform bounds\nchecking and return a pure Either value.  This means that you need\nnot remember which specific function performs the conversion you\ndesire.\n\nAlso included in the package are optional instances that provide\nconversion for various numeric and time types, as well as utilities\nfor writing your own instances.\n\nFinally, there is a function that will raise an exception on\nbounds-checking violation, or return a bare value otherwise,\nimplemented in terms of the safer function described above.\n\nConvertible is also used by HDBC 2.0 for handling marshalling of\ndata to and from databases.\n\nConvertible is backed by an extensive test suite and passes tests\non GHC and Hugs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
          buildable = true;
        };
      };
    };
  }