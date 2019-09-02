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
      specVersion = "2.2";
      identifier = { name = "X"; version = "0.3.0.0"; };
      license = "BSD-3-Clause AND GPL-3.0-or-later";
      copyright = "(c) 2007-2008 Galois Inc.,\n(c) 2019 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Galois Inc., Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "A light-weight XML library";
      description = "Light-weight XML library derived from the [`xml` package](http://hackage.haskell.org/package/xml)\nfor simple parsing and creation of XML documents.\nIt only depends on @base@, @deepseq@, @bytestring@, @text@, and @text-short@.\n\nThis library provides support for the following specifications:\n\n* <http://www.w3.org/TR/xml/ Extensible Markup Language (XML) 1.0 (5ed)>\n\n* <http://www.w3.org/TR/xml-names/ Namespaces in XML 1.0 (3ed)>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-short" or (buildDepError "text-short"))
          ];
        };
      };
    }