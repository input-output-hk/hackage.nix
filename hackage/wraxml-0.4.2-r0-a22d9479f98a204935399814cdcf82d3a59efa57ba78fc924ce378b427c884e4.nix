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
      specVersion = "1.0";
      identifier = { name = "wraxml"; version = "0.4.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://darcs.haskell.org/wraxml/";
      url = "";
      synopsis = "Lazy wrapper to HaXML, HXT, TagSoup via custom XML tree structure";
      description = "This is a wrapper to HaXML and HXT (Haskell XML Toolbox).\nIt's my work-around for the unfortunate situation that both toolboxes\nhave different functionality,\nnone is the superset of the other.\nBoth of them rely on data structures, which look unnatural to me.\nAdditionally they provide combinator functions that are actually weakly typed,\nthey are all of type @(a -> [a])@,\ninstead of being differentiated into @(a -> Bool)@, @(a -> a)@ and @(a -> [a])@.\nHXT is even weaker in type safety than HaXML\nsince it allows complete XML trees even in attribute values.\nI didn't want to write another XML toolbox with parsers, HTML support and so on,\nhowever in the meantime I came close to it.\n\nI decided to do some wrapping in order to use as much as possible functionality\nfrom HaXML and HXT.\nI provide my own XML tree data structure with according operations.\nConversions between HaXML or HXT trees and my own ones are implemented.\nSo I can use the parser and pretty printer of both HaXML and HXT\nwhile processing trees the way I find more natural.\nTagSoups can also be converted to XML trees.\nAll conversions are lazy.\n\nI have a special XML string structure.\n(\"Text.XML.WraXML.String\")\nXML strings consist of ASCII characters and XML references.\nMy XML tree is built on top of a very general tree structure,\nwhich distinguishs between leafs and inner branches.\n(\"Data.Tree.BranchLeafLabel\")\nEach element of a tree is labeled with some information.\nBranches are then used for tags,\nleafs for XML strings and special tags,\nand the labels for pointers to positions in the source file.\n(\"Text.XML.WraXML.Tree\")";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."tagchup" or (errorHandler.buildDepError "tagchup"))
          (hsPkgs."xml-basic" or (errorHandler.buildDepError "xml-basic"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."hxt-filter" or (errorHandler.buildDepError "hxt-filter"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }