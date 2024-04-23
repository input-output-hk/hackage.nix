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
      identifier = { name = "ghci-hexcalc"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Takenobu Tani";
      maintainer = "takenobu.hs@gmail.com";
      author = "Takenobu Tani";
      homepage = "https://github.com/takenobu-hs/ghci-hexcalc";
      url = "";
      synopsis = "GHCi as a Hex Calculator interactive";
      description = "This package defines operations for an interactive hex-caluclator using GHCi.\nThis is a simple and casual interactive tool like Perl and Excel\nfor daily work.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test-ghci-hexcalc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."ghci-hexcalc" or (errorHandler.buildDepError "ghci-hexcalc"))
          ];
          buildable = true;
        };
      };
    };
  }