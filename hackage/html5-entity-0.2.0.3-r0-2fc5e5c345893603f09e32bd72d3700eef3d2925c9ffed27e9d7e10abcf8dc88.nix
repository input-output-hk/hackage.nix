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
    flags = { generator = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "html5-entity"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015";
      maintainer = "konstantin@anche.no";
      author = "Konstantin Zudov";
      homepage = "https://github.com/zudov/html5-entity/";
      url = "";
      synopsis = "A library for looking up and validating HTML5 entities.";
      description = "A library for looking up and validating HTML5 entities.\nThe <http://html.spec.whatwg.org/multipage/entities.json following>\ndocument is used as an authoritative source of the valid\nentity names and their corresponding codepoints.\nYou can think of this library as about bindings to the data\nfrom that file. For usage see the 'Text.Html5.Entity'\nmodule.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "html5-entity-generate" = {
          depends = (pkgs.lib).optionals (flags.generator) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.generator then true else false;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."html5-entity" or (errorHandler.buildDepError "html5-entity"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }