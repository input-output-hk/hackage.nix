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
    flags = { mkunicodedata = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "rfc5051"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2013 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "";
      url = "";
      synopsis = "Simple unicode collation as per RFC5051.";
      description = "This library implements @i;unicode-casemap@,\nthe simple, non locale-sensitive unicode collation\nalgorithm described in RFC 5051 (<http://www.rfc-editor.org/rfc/rfc5051.txt>).\nProper unicode collation can be done using text-icu, but that is a big\ndependency that depends on a large C library, and rfc5051 might be better\nfor some purposes.\n\nHere is a list of strings sorted by the Prelude's @sort@ function:\n\n@Abe Oeb abe ab&#233; oeb &#193;be &#196;be &#212;eb &#225;be &#228;be &#244;eb@\n\nHere is the same list sorted by @sortBy compareUnicode@:\n\n@Abe abe ab&#233; &#193;be &#225;be &#196;be &#228;be Oeb oeb &#212;eb &#244;eb@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "MkUnicodeData" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = if flags.mkunicodedata then true else false;
        };
      };
    };
  }