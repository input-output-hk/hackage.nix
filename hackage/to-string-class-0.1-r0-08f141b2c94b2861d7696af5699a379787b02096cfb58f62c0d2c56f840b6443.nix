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
      identifier = { name = "to-string-class"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Converting string-like types to Strings.";
      description = "This library provides the class:\n\nclass ToString s where toString :: s -> String\n\nInstances for String and Char are provided.\nFor other instances see the package:\n\n<http://hackage.haskell.org/package/to-string-instances>\n\nAlso included is a general coercion function between string-like types:\n\nfromToString :: (IsString s2, ToString s1) => s1 -> s2\n\nfromToString = fromString . toString";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }