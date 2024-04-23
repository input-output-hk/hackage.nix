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
      specVersion = "1.8";
      identifier = { name = "yaml2owl"; version = "0.0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2012, 2013 Leif Warner";
      maintainer = "abimelech@gmail.com";
      author = "Leif Warner";
      homepage = "http://github.com/leifw/yaml2owl";
      url = "";
      synopsis = "Generate OWL schema from YAML syntax, and an RDFa template.";
      description = "A command-line tool for reading a simplified rough draft of an\nRDFS/OWL schema in YAML format (example in \"examples\"),\nand converting it to an OWL schema serialized as Turtle.\nAlso, makes some RDFa \"templates\".  This is intended for quick\nscaffolding of a site that uses RDFa templates to present instance\ndata of RDF.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yaml2owl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."swish" or (errorHandler.buildDepError "swish"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          ];
          buildable = true;
        };
      };
    };
  }