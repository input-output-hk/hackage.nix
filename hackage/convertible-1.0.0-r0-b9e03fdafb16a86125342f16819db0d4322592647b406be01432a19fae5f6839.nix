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
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "convertible"; version = "1.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2009-2009 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/convertible";
      url = "";
      synopsis = "Typeclasses and instances for converting between types";
      description = "convertible provides a typeclass with a single function\nthat is designed to help convert between different types: numeric\nvalues, dates and times, and the like.  The conversions perform bounds\nchecking and return a pure Either value.  This means that you need\nnot remember which specific function performs the conversion you\ndesire.\n\nAlso included in the package are optional instances that provide\nconversion for various numeric and time types, as well as utilities\nfor writing your own instances.\n\nFinally, there is a function that will raise an exception on\nbounds-checking violation, or return a bare value otherwise,\nimplemented in terms of the safer function described above.\n\nConvertible is also used by HDBC 2.0 for handling marshalling of\ndata to/from databases.\n\nConvertible is backed by an extensive test suite and passes tests\non GHC and Hugs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
      exes = {
        "runtests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
          ];
          buildable = if flags.buildtests then true else false;
        };
      };
    };
  }