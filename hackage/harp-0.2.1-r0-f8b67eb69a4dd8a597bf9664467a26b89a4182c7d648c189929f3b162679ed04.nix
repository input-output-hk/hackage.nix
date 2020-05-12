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
      specVersion = "0";
      identifier = { name = "harp"; version = "0.2.1"; };
      license = "BSD-4-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
      author = "Niklas Broberg";
      homepage = "http://www.cs.chalmers.se/~d00nibro/harp/";
      url = "";
      synopsis = "HaRP allows pattern-matching with regular expressions";
      description = "HaRP, or Haskell Regular Patterns, is a Haskell extension\nthat extends the normal pattern matching facility with\nthe power of regular expressions. This expressive power\nis highly useful in a wide range of areas, including text parsing\nand XML processing. Regular expression patterns in HaRP work over\nordinary Haskell lists ([]) of arbitrary type. We have implemented\nHaRP as a pre-processor to ordinary Haskell.\n\nFor details on usage, please see the website.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }