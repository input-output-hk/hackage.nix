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
    flags = { do-no-storable = false; do-liquid = false; do-test = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "posit"; version = "3.2.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2021-2022 Nathan Waivio";
      maintainer = "nathan.waivio@gmail.com";
      author = "Nathan Waivio";
      homepage = "https://github.com/waivio/posit#readme";
      url = "";
      synopsis = "";
      description = "The Posit Number format.  Please see the README on GitHub at <https://github.com/waivio/posit#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."data-dword" or (errorHandler.buildDepError "data-dword"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (!flags.do-liquid) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ (pkgs.lib).optionals (flags.do-liquid) [
          (hsPkgs."liquid-base" or (errorHandler.buildDepError "liquid-base"))
          (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
          ];
        buildable = true;
        };
      tests = {
        "posit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."posit" or (errorHandler.buildDepError "posit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "test-posit-weigh" = {
          depends = [
            (hsPkgs."posit" or (errorHandler.buildDepError "posit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
            ];
          buildable = true;
          };
        };
      };
    }