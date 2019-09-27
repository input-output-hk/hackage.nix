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
    flags = { network-uri = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hxt"; version = "9.3.1.12"; };
      license = "MIT";
      copyright = "Copyright (c) 2005-2014 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt, Martin Schmidt, Torben Kuseler";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "A collection of tools for processing XML with Haskell.";
      description = "The Haskell XML Toolbox bases on the ideas of HaXml and HXML,\nbut introduces a more general approach for processing XML with Haskell.\nThe Haskell XML Toolbox uses a generic data model for representing XML documents,\nincluding the DTD subset and the document subset, in Haskell.\nIt contains a validating XML parser, a HTML parser, namespace support,\nan XPath expression evaluator, an XSLT library, a RelaxNG schema validator\nand funtions for serialization and deserialization of user defined data.\nThe library makes extensive use of the arrow approach for processing XML.\nSince version 9 the toolbox is partitioned into various (sub-)packages.\nThis package contains the core functionality,\nhxt-curl, hxt-tagsoup, hxt-relaxng, hxt-xpath, hxt-xslt,\nhxt-regex-xmlschema contain the extensions.\nhxt-unicode contains encoding and decoding functions,\nhxt-charproperties char properties for unicode and XML.\n\nChanges from 9.3.1.11: Bug fix in haddock comments\n\nChanges from 9.3.1.10: Bug in DTD validation, space and time leak in delta removed\n\nChanges from 9.3.1.9: lower bound of mtl dependency lowered to 2.0.1\n\nChanges from 9.3.1.8: Bug in hread removed\n\nChanges from 9.3.1.7: Foldable and Traversable instances for NTree added\nControl.Except used instead of deprecated Control.Error\n\nChanges from 9.3.1.6: canonicalize added in hread and hreadDoc\n\nChanges from 9.3.1.4: conditionally (no default)\ndependency from networt changed to network-uri with flag \"network-uri\"\n\nChanges from 9.3.1.3: warnings from ghc-7.8.1 removed\n\nChanges from 9.3.1.2: https as protocol added\n\nChanges from 9.3.1.1: new parser xreadDoc\n\nChanges from 9.3.1.0: in readString all input decoding switched off\n\nChanges from 9.3.0.1: lower bound for network set to be >= 2.4\n\nChanges from 9.3.0: upper bound for network set to be < 2.4\n(URI signatures changed in 2.4)\n\nChanges from 9.2.2: XMLSchema validation integrated\n\nChanges from 9.2.1: user defined mime type handlers added\n\nChanges from 9.2.0: New warnings from ghc-7.4 removed";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."hxt-charproperties" or (buildDepError "hxt-charproperties"))
          (hsPkgs."hxt-unicode" or (buildDepError "hxt-unicode"))
          (hsPkgs."hxt-regex-xmlschema" or (buildDepError "hxt-regex-xmlschema"))
          ] ++ (if flags.network-uri
          then [ (hsPkgs."network-uri" or (buildDepError "network-uri")) ]
          else [ (hsPkgs."network" or (buildDepError "network")) ]);
        buildable = true;
        };
      };
    }