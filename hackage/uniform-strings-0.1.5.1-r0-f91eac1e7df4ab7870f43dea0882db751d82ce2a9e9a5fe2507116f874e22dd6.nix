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
      identifier = { name = "uniform-strings"; version = "0.1.5.1"; };
      license = "GPL-2.0-only";
      copyright = "2021 Andrew U. Frank";
      maintainer = "Andrew U. Frank <uniform@gerastree.at>";
      author = "Andrew Frank";
      homepage = "https://github.com/github.com:andrewufrank/uniform-strings.git#readme";
      url = "";
      synopsis = "Manipulate and convert strings of characters uniformly and consistently";
      description = "Reduce complexity of Haskell by providing a\n\n- set of uniformly named conversion functions between\n\n- String,\n\n- Text,\n\n- ByteString,\n\n- LazyByteString and\n\n- urlEncoding\n\nwith the most important text manipulation functions for string and text\nwhere the semantic is the same (tested with quickcheck).\nTentatively some infix string manipulations are offered as well.\n\nPlease see the README on GitHub at <https://github.com/andrewufrank/uniform-strings/readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."uniform-algebras" or (errorHandler.buildDepError "uniform-algebras"))
          ];
        buildable = true;
        };
      tests = {
        "strings-test" = {
          depends = [
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."test-invariant" or (errorHandler.buildDepError "test-invariant"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uniform-algebras" or (errorHandler.buildDepError "uniform-algebras"))
            (hsPkgs."uniform-strings" or (errorHandler.buildDepError "uniform-strings"))
            ];
          buildable = true;
          };
        };
      };
    }