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
      identifier = { name = "dstring"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2009 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Difference strings.";
      description = "Difference strings: a data structure for O(1) append on\nstrings. Note that a DString is just a newtype wrapper around a\n'DList Char'.  The reason we need a new type instead of just a type\nsynonym is that we can have an 'instance IsString DString' so we can\nwrite overloaded string literals of type DString.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."to-string-class" or (errorHandler.buildDepError "to-string-class"))
        ];
        buildable = true;
      };
    };
  }