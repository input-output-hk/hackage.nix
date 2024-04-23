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
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "strptime"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Eugene Kirpichov";
      maintainer = "ekirpichov@gmail.com    ";
      author = "Eugene Kirpichov";
      homepage = "";
      url = "";
      synopsis = "Efficient parsing of LocalTime using a binding to C's strptime,\nwith some extra features (i.e. fractional seconds)";
      description = "This library provides a binding to strptime, that allows to parse\ndates and times from strings and strict/lazy bytestrings. The library\ncreates LocalTime values. It provides some extra features which\nthe original strptime lacks - parsing of fractional seconds and parsing\nof ten-powers of seconds since epoch (for example milliseconds since epoch).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }