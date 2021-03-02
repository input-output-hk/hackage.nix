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
      specVersion = "2.2";
      identifier = { name = "LiterateMarkdown"; version = "0.1.0.1"; };
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
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      exes = {
        "lhsc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."LiterateMarkdown".components.sublibs.converter or (errorHandler.buildDepError "LiterateMarkdown:converter"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-foo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."LiterateMarkdown".components.sublibs.converter or (errorHandler.buildDepError "LiterateMarkdown:converter"))
            ];
          buildable = true;
          };
        };
      };
    }