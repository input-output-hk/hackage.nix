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
      identifier = { name = "natural-sort"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/natural-sort/";
      url = "";
      synopsis = "User-friendly text collation";
      description = "The built-in comparisons for textual data are based on Unicode ordinals. This\ndoes not match most every-day sorting algorithms. For example,\n\\\"z10.txt\\\" is sorted after \\\"z2.txt\\\" by users, but before it by\nna&#239;ve algorithms.\n\nThis package provides an implementation of \\\"natural sort\\\", which more\nclosely matches user expectations.\n\nSee also: <http://www.davekoelle.com/alphanum.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }