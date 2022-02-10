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
      identifier = { name = "json-autotype"; version = "0.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2014";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/json-autotype";
      url = "";
      synopsis = "Automatic type declaration for JSON input data";
      description = "Generates datatype declarations with Aeson's \"FromJSON\" instances\nfrom a set of example \".json\" files.\n\nTo get started you need to install the package,\nand run \"json-autotype\" binary on an input \".json\" file.\nThat will generate a new Aeson-based JSON parser.\n\n\"$ json-autotype input.json -o JSONTypes.hs\"\n\nFeel free to tweak the by changing types of the fields\n- any field type that is instance of \"FromJSON\" should work.\n\nYou may immediately test the parser by calling it as a script:\n\n\"$ runghc JSONTypes.hs input.json\"\n\nSee introduction on  <https://github.com/mgajda/json-autotype>\nfor details.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "json-autotype" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."hflags" or (errorHandler.buildDepError "hflags"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }