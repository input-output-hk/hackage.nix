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
      identifier = { name = "pandoc-types"; version = "1.12.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2006-2010 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://johnmacfarlane.net/pandoc";
      url = "";
      synopsis = "Types for representing a structured document";
      description = "@Text.Pandoc.Definition@ defines the 'Pandoc' data\nstructure, which is used by pandoc to represent\nstructured documents.  This module used to live\nin the pandoc package, but starting with pandoc 1.7, it\nhas been split off, so that other packages can use it\nwithout drawing in all of pandoc's dependencies, and\npandoc itself can depend on packages (like citeproc-hs)\nthat use them.\n\n@Text.Pandoc.Builder@ provides functions for building\nup @Pandoc@ structures programmatically.\n\n@Text.Pandoc.Generic@ provides generic functions for\nmanipulating Pandoc documents.\n\n@Text.Pandoc.Walk@ provides faster, nongeneric functions\nfor manipulating Pandoc documents.\n\n@Text.Pandoc.JSON@ provides functions for serializing\nand deserializing a @Pandoc@ structure to and from JSON.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }