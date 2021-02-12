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
      specVersion = "2.4";
      identifier = { name = "hw-diagnostics"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-diagnostics#readme";
      url = "";
      synopsis = "Diagnostics library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."hw-diagnostics" or (errorHandler.buildDepError "hw-diagnostics"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest-discover.components.exes.doctest-discover or (pkgs.buildPackages.doctest-discover or (errorHandler.buildToolDepError "doctest-discover:doctest-discover")))
            ];
          buildable = true;
          };
        };
      };
    }