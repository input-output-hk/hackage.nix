{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "data-pprint";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "divip@aszt.inf.elte.hu";
        author = "Péter Diviánszky";
        homepage = "";
        url = "";
        synopsis = "Prettyprint and compare Data values";
        description = "Prettyprint and compare Data values.\n\n*   Size limit for the output\n\n*   Time limit for the computation\n\n*   Escape exceptions\n\n*   Do not escape unicode characters\n\n*   Comparison: Highlight the first difference\n\n*   Comparison: Yes, No or Maybe results\n\nProbably you need only the 'pprint' and '(===)' functions from the \"Data.PPrint\" module.\n\nUsage examples:\n\n> pprint [1..]\n> pprint \$ repeat [1..]\n> pprint \$ iterate (*10) 1\n> pprint \$ map length \$ replicate 5 [1..] ++ repeat []\n> pprint [2 `div` 0, error \"xxx\", 18, 4 `div` 0]\n> [1..10] === reverse [10,9..1]\n> [1..10] === reverse [10..1]\n> reverse [10..] === [1..]\n> [1..] === [1..99] ++ [101..]\n> ([1..], [1..]) === ([1..], [1..100])\n> (error \"x\", [1..]) === (0 `div` 0, reverse [1..])\n> error (\"xx\" ++ show (length [1..])) === 1\n> error (\"xx\" ++ error \"yy\") === 1\n> (error \$ unlines \$ replicate 300 \"xxxxxxxxxxxxxxxxxxxxxxxxxxx\") === 1\n> pprint ['a'..]\n> pprint \$ \"hello\" ++ [error \"x\"] ++ \"world!\"\n\nSee also <http://pnyf.inf.elte.hu/fp/Show_en.xml>";
        buildType = "Simple";
      };
      components = {
        "data-pprint" = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.mtl
            hsPkgs.deepseq
            hsPkgs.time
            hsPkgs.parallel
          ];
        };
      };
    }