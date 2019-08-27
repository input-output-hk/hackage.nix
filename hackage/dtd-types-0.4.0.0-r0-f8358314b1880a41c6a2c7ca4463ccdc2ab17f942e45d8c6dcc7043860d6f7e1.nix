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
      specVersion = "1.6";
      identifier = { name = "dtd-types"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gale@sefer.org";
      author = "Yitzchak Gale";
      homepage = "https://ygale.github.io/dtd";
      url = "";
      synopsis = "Basic types for representing XML DTDs";
      description = "This package provides types to represent an XML Document Type\nDeclaration (DTD) as defined in W3C specifications\n(<http://www.w3.org/XML/Core/#Publications>). It is intended to be\ncompatible with and extend the set of types in \"Data.XML.Types\"\nprovided by the xml-types package.\n\nFollowing the philosophy of @Data.XML.Types@, the types in this\nmodule are not intended to be a strict and complete representation\nof the model in the W3C specifications; rather, they are intended\nto be convenient and type-safe for the kinds of processing of DTDs\nthat are commonly done in practice. As such, this model is\ncompatible with both Version 1.0 and Version 1.1 of the XML\nspecification.\n\nTherefore, these types are not suitable for type-level validation\nof the syntax of a DTD. For example: these types are more\nlenient than the specs about the characters that are allowed in\nvarious locations in a DTD; entities of various kinds only appear\nas distinct syntactic elements in places where they are commonly\nneeded when processing DTDs; etc.\n\nConditional sections are not represented in these types. They\nshould be handled directly by parsers and renderers, if needed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."xml-types" or (buildDepError "xml-types"))
          ];
        };
      };
    }