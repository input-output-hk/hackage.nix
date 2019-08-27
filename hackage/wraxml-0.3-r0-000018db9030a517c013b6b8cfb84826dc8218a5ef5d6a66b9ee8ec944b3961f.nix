let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "wraxml"; version = "0.3"; };
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
          (hsPkgs."polyparse" or (buildDepError "polyparse"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."tagsoup-ht" or (buildDepError "tagsoup-ht"))
          (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."hxt-filter" or (buildDepError "hxt-filter"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      };
    }