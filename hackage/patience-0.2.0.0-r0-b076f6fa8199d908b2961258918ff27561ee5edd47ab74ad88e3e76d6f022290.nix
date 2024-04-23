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
      specVersion = "2.2";
      identifier = { name = "patience"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chessai <chessai1996@gmail.com> ";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Patience diff and longest increasing subsequence";
      description = "This library implements the \\\"patience diff\\\" algorithm, as well as the patience\nalgorithm for the longest increasing subsequence problem.\n\nPatience diff computes the difference between two lists, for example the\nlines of two versions of a source file.  It provides a good balance of\nperformance, nice output for humans, and implementation simplicity.  For more\ninformation, see <http://alfedenzo.livejournal.com/170301.html> and\n<http://bramcohen.livejournal.com/73318.html>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }