{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gentlemark";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Andriy Polishchuk";
      maintainer = "Andriy Polishchuk <andriy.s.polishchuk@gmail.com>";
      author = "Andriy Polishchuk";
      homepage = "http://github.com/andriyp/gentlemark";
      url = "";
      synopsis = "Gentle markup language";
      description = "GentleMark is a gentle markup language which is designed to fit forum-like systems.\n\nStyles:\n\n@\n\\*\\*Bold\\*\\*\n~~Italic~~\n__Underlined__\n!!Striked!!\n%%Spoiler%%\n\\`\\`Monospace\\`\\`\n\$\$Latex\$\$\n@\n\nAccents:\n\n@\n/(Quote)/     > I think I can safely say that nobody understands quantum mechanics.\n/(Reference)/ >>19991\n/(Hyperlink)/ http:.., https:.., ftp:.., mailto:.., news:.., irc:..\n@\n\nUnordered lists:\n\n@\n\\- Monad axioms:\n\\- Kleisli composition forms\n\\- a Category\n@\n\nOrdered lists:\n\n@\n1. cabal update\n2. cabal install gentlemark\n@\n\nCustom tags:\n\n@\n[code|haskell] fibs = 0 : 1 : zipWith (+) fibs (tail fibs) [/code]\n[some-tag|some-option-1|...|some-option-n] something [/some-tag]\n[foo] bar [/foo]\n@";
      buildType = "Simple";
    };
    components = {
      "gentlemark" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "hunit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.parsec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }