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
    flags = { examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "freetype2"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011-2012 Jason Dagit\nCopyright © 2020 Oleksii Divak";
      maintainer = "Oleksii Divak <frozenwitness@gmail.com>";
      author = "Jason Dagit, Oleksii Divak";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for FreeType 2 library";
      description = "Mostly complete and mostly raw bindings to the [FreeType2](https://www.freetype.org/) library.\n\nPlease check the README for information on how these\nbindings operate.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "freetype-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "dynamic-function-check" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "field-coherence-check" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }