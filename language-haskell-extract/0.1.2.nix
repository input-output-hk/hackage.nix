{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "language-haskell-extract";
          version = "0.1.2";
        };
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
        language-haskell-extract = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.regex-posix
            hsPkgs.haskell-src-exts
            hsPkgs.template-haskell
          ];
        };
      };
    }