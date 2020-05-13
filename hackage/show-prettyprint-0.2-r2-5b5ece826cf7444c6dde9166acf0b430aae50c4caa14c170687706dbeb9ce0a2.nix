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
      identifier = { name = "show-prettyprint"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "David Luposchainsky, 2016";
      maintainer = "David Luposchainsky <dluposchainsky (λ) google>";
      author = "David Luposchainsky <dluposchainsky (λ) google>";
      homepage = "https://github.com/quchen/show-prettyprint#readme";
      url = "";
      synopsis = "Robust prettyprinter for output of auto-generated Show\ninstances";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }