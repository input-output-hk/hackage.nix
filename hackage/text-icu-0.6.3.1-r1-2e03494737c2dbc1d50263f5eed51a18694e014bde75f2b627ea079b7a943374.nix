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
      identifier = { name = "text-icu"; version = "0.6.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2009, 2010 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "";
      homepage = "http://bitbucket.org/bos/text-icu";
      url = "";
      synopsis = "Bindings to the ICU library";
      description = "Haskell bindings to the International Components for Unicode (ICU)\nlibraries.  These libraries provide robust and full-featured Unicode\nservices on a wide variety of platforms.\n\nFeatures include:\n\n* Both pure and impure bindings, to allow for fine control over efficiency\nand ease of use.\n\n* Breaking of strings on character, word, sentence, and line boundaries.\n\n* Access to the Unicode Character Database (UCD) of character metadata.\n\n* String collation functions, for locales where the conventions for\nlexicographic ordering differ from the simple numeric ordering of\ncharacter codes.\n\n* Character set conversion functions, allowing conversion between\nUnicode and over 220 character encodings.\n\n* Unicode normalization.  (When implementations keep strings in a\nnormalized form, they can be assured that equivalent strings have a\nunique binary representation.)\n\n* Regular expression search and replace.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs."base" or (buildDepError "base"));
        libs = [
          (pkgs."icuuc" or (sysDepError "icuuc"))
          ] ++ (if system.isWindows
          then [
            (pkgs."icuin" or (sysDepError "icuin"))
            (pkgs."icudt" or (sysDepError "icudt"))
            ]
          else [
            (pkgs."icui18n" or (sysDepError "icui18n"))
            (pkgs."icudata" or (sysDepError "icudata"))
            ]);
        buildable = true;
        };
      };
    }