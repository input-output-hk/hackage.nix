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
      identifier = { name = "LiterateMarkdown"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "faebl.taylor@pm.me";
      author = "Fabian Schneider";
      homepage = "";
      url = "";
      synopsis = "Converter to convert from .lhs to .md and vice versa.";
      description = "`lhsc` is a program to convert literate haskell files in the\nbirdtick format to correctly rendered (git flavoured, html containing) markdown files\nand vice versa.\n\nIt strips away the heading tags #, replacing them with the corresponding html tags,\nconverts the `'''haskell [...]'''` to `> [...]` as recognised by the GHC literate prepocessor.\n`''' [...] '''` will be converted to `< [...]` and will be discarded by ghc but will still be displayed as code when rendered.\n(In both cases `'''` is actually the three md backticks, but its a pain to write md about md.)\n\nUsage:\n\n`lhsc (toLhs|toMd) file1 [file2] [...]`;\nThe `toLhs` and `toMd` commands are not case sensitive.\nThe program will convert each file from the other format to the specified one,\ncreating the files `file1.md` `file2.md` ... or `file1.lhs` `file2.lhs` ... in the same directory respectively.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "converter" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        };
      exes = {
        "lhsc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."converter" or (buildDepError "converter"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-foo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."converter" or (buildDepError "converter"))
            ];
          buildable = true;
          };
        };
      };
    }