{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "regexpr";
        version = "0.2.5";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "regular expression like Perl/Ruby in Haskell";
      description = "Regular expression library like Perl/Ruby's regular expressions.\nThis package has a module RegexPR.\nAnd RegexPR export functions matchRegexPR and gsubRegexPR.\n\nmatchRegexPR :: String -> Maybe ((String, (String, String)), [(Int, String)])\n\ngsubRegexPR :: String -> String -> String\n\nExamples:\n\nmatchRegexPR \"ab(cde)f\\\\1\" \"kkkabcdefcdefgh\" =>\nJust ((\"abcdefcde\", (\"kkk\", \"fgh\")),[(1,\"cde\")])\n\nmatchRegexPR \"(?<=hij)abc\" \"kkkabchijabcde\" =>\nJust ((\"abc\",(\"kkkabchij\",\"de\")),[])\n\ngsubRegexPR \"\\\\G(\\\\d\\\\d\\\\d)\" \"\\\\1,\" \"123456 789\" => \"123,456, 789\"\n\nsubRegexPR \"(?<=(.)(.)(.))e\" \" \\\\3\\\\2\\\\1 \" \"abcdefg\" => \"abcd dcb fg\"\n\ngsubRegexPR \"(?ixm)  aBc  . # comment \\n\\n\" \"abc!\" \"abc\\nABCDAbcAbc\" =>\n\"abc!abc!abc!bc\"\n\ngmatchRegexPR \"(?=(?<!(?!abc)))abc\" \"abcdefdefabc\" =>\n[((\"abc\", (\"\", \"defdefabc\")), []), ((\"abc\", (\"defdef\", \"\")), [])]";
      buildType = "Simple";
    };
    components = {
      "regexpr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.HUnit)
        ];
      };
    };
  }