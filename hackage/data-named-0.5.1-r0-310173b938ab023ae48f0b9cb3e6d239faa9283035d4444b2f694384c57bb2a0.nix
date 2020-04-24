{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "data-named"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/data-named";
      url = "";
      synopsis = "Data types for named entities";
      description = "The library provides data types which can be used to represent\nforest structures with labels stored in internal nodes and\nwords kept in leaves.  In particular, those types are well suited\nfor representing the layer of named entities (NEs).\n\nThe IOB method is implemented in the Data.Named.IOB module and can\nbe used to translate between a forest of entities and a sequence\nof compound IOB labels.  This method can be used together with a\nsequence classifier to indirectly model forest structures.\n\nThe Data.Named.Graph module can be used to represent more general,\ngraph structures of entities.  The module provides also a lossy\nconversion from a DAG to a disjoint forest of entities.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }