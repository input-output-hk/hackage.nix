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
      specVersion = "1.2";
      identifier = { name = "only"; version = "0.0.3.0"; };
      license = "LicenseRef-GPL";
      copyright = "2008 Andrew Robbins";
      maintainer = "Andrew Robbins <and_j_rob@yahoo.com>";
      author = "Andrew Robbins <and_j_rob@yahoo.com>";
      homepage = "";
      url = "";
      synopsis = "A grep-like tool for filtering on words or lines.";
      description = "The 'only' command-line tool lets you search based\non word patterns or line patterns like never before! Not only can\nyou search with 'only -l patt' but you can select the n-th match\nwith '-l n\\/patt\\/' and the next 3 lines with '-l \\/patt\\/0:3'.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "only" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            ];
          buildable = true;
          };
        };
      };
    }