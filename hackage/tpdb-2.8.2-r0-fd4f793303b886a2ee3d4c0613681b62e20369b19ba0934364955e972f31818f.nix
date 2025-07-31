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
      specVersion = "3.8";
      identifier = { name = "tpdb"; version = "2.8.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Alexander Bau, Johannes Waldmann";
      homepage = "https://github.com/jwaldmann/haskell-tpdb";
      url = "";
      synopsis = "Data Type for Rewriting Systems";
      description = "The package defines data types and parsers for rewriting systems\nand termination proofs,\nas used in the Termination Competitions.\nFor syntax and semantics specification, \nsee <http://www.termination-portal.org/wiki/TPDB>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xml-hamlet" or (errorHandler.buildDepError "xml-hamlet"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
        ];
        buildable = true;
      };
      exes = {
        "plain2xtc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
        "srs2trs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
        "xtc2srs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
      tests = {
        "XML" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
          ];
          buildable = true;
        };
        "XML_relative" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
          ];
          buildable = true;
        };
        "TRS" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "TRS_02" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "SRS" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "Speed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
          buildable = false;
        };
        "Attributes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
          buildable = true;
        };
        "XML-Theory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
          ];
          buildable = true;
        };
        "CPF-AC" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
          ];
          buildable = true;
        };
        "Parse-AC" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
          ];
          buildable = true;
        };
        "read-cpf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
          ];
          buildable = true;
        };
        "read-complex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
          ];
          buildable = true;
        };
        "read-large" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
          ];
          buildable = true;
        };
        "dp-performance" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tpdb" or (errorHandler.buildDepError "tpdb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }