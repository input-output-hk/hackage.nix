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
      identifier = { name = "epub-metadata"; version = "5.2"; };
      license = "ISC";
      copyright = "2010 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "https://github.com/dino-/epub-metadata#readme";
      url = "";
      synopsis = "Library for parsing epub document metadata";
      description = "Library for parsing and manipulating epub document metadata. Supports epub versions 2 and 3. This library was constructed by studying the IDPF specifications for epub documents found here <http://www.idpf.org/epub/20/spec/OPF_2.0.1_draft.htm> and here <http://www.idpf.org/epub/30/spec/epub30-publications.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          ];
        buildable = true;
        };
      exes = {
        "epub-metadata-example" = {
          depends = [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."epub-metadata" or (errorHandler.buildDepError "epub-metadata"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-epub-metadata" = {
          depends = [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."epub-metadata" or (errorHandler.buildDepError "epub-metadata"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            ];
          buildable = true;
          };
        };
      };
    }