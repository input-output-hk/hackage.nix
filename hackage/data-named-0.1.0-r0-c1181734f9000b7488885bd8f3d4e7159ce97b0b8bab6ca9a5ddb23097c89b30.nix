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
      specVersion = "1.6";
      identifier = { name = "data-named"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/data-named";
      url = "";
      synopsis = "Data types for named entities";
      description = "The library provides data types which can be used to represent\nforest structures with labels stored in internal nodes and\nwords kept in leaves.  In particular, those types are well suited\nfor representing the layer of named entities (NEs).\n\nThe IOB method is implemented in the Data.Named.IOB module and can\nbe used to translate between a forest of entities and a sequence\nof compound IOB labels.  This method can be used together with a\nsequence classifier to indirectly model forest structures.\n\nThe Data.Named.Graph module can be used to represent more general,\ngraph structures of entities.  The module provides also a lossy\nconversion from a DAG to a forest of entities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
        ];
        buildable = true;
      };
    };
  }