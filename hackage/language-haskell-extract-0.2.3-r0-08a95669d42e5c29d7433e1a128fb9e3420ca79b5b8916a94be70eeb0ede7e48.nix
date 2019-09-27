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
      identifier = { name = "language-haskell-extract"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oscar Finnsson";
      author = "Oscar Finnsson & Emil Nordling";
      homepage = "http://github.com/finnsson/template-helper";
      url = "";
      synopsis = "Module to automatically extract functions from the local code.";
      description = "@language-haskell-extract@ contains some useful helper functions on top of Template Haskell.\n\n@functionExtractor@ extracts all functions after a regexp-pattern.\n\n> foo = \"test\"\n> boo = \"testing\"\n> bar = \$(functionExtractor \"oo\$\")\n\nwill automagically extract the functions ending with @oo@ such as\n\n> bar = [(\"foo\",foo), (\"boo\",boo)]\n\nThis can be useful if you wish to extract all functions beginning with test (for a test-framework)\nor all functions beginning with wc (for a web service).\n\n@functionExtractorMap@ works like @functionsExtractor@ but applies a function over all function-pairs.\n\nThis functions is useful if the common return type of the functions is a type class.\n\nExample:\n\n> secondTypeclassTest =\n>   do let expected = [\"45\", \"88.8\", \"\\\"hej\\\"\"]\n>          actual = \$(functionExtractorMap \"^tc\" [|\\n f -> show f|] )\n>      expected @=? actual\n>\n> tcInt :: Integer\n> tcInt = 45\n>\n> tcDouble :: Double\n> tcDouble = 88.8\n>\n> tcString :: String\n> tcString = \"hej\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }