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
      identifier = { name = "uniform-fileio"; version = "0.1.3"; };
      license = "GPL-2.0-only";
      copyright = "2021 Andrew U. Frank";
      maintainer = "Andrew U. Frank <uniform@gerastree.at>";
      author = "Andrew Frank";
      homepage = "";
      url = "";
      synopsis = "Uniform file handling operations";
      description = "Uniform operations for handling files and file path names\nindependent from the representation.\n\nAdditionally, functions to read and write files for specific\ntyped content (marked by extension).\n\nadded stack build lts 19.16 for ghc 9.0.2\n\nPlease see the README on GitHub at <https://github.com/andrewufrank/uniform-fileiio/readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."uniform-algebras" or (errorHandler.buildDepError "uniform-algebras"))
          (hsPkgs."uniform-error" or (errorHandler.buildDepError "uniform-error"))
          (hsPkgs."uniform-strings" or (errorHandler.buildDepError "uniform-strings"))
          (hsPkgs."uniform-time" or (errorHandler.buildDepError "uniform-time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      tests = {
        "fileio-test" = {
          depends = [
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."test-invariant" or (errorHandler.buildDepError "test-invariant"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uniform-algebras" or (errorHandler.buildDepError "uniform-algebras"))
            (hsPkgs."uniform-error" or (errorHandler.buildDepError "uniform-error"))
            (hsPkgs."uniform-fileio" or (errorHandler.buildDepError "uniform-fileio"))
            (hsPkgs."uniform-strings" or (errorHandler.buildDepError "uniform-strings"))
            (hsPkgs."uniform-time" or (errorHandler.buildDepError "uniform-time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      };
    }