{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      color-output = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chell";
          version = "0.2.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/chell/";
        url = "";
        synopsis = "A simple and intuitive library for automated testing.";
        description = "Chell is a simple and intuitive library for automated testing. It natively\nsupports assertion-based testing, and can use companion libraries\nsuch as @chell-quickcheck@ to support more complex testing strategies.\n\nAn example test suite, which verifies the behavior of artithmetic operators.\n\n@\n&#x7b;-\\# LANGUAGE OverloadedStrings \\#-&#x7d;\n&#x7b;-\\# LANGUAGE TemplateHaskell \\#-&#x7d;\n\nimport Test.Chell\n\ntest_Math :: Suite\ntest_Math = suite \\\"math\\\" [test_Addition, test_Subtraction]\n\ntest_Addition :: Suite\ntest_Addition = assertions \\\"addition\\\" \$ do\n&#x20;   \$expect (equal (2 + 1) 3)\n&#x20;   \$expect (equal (1 + 2) 3)\n\ntest_Subtraction :: Suite\ntest_Subtraction = assertions \\\"subtraction\\\" \$ do\n&#x20;   \$expect (equal (2 - 1) 1)\n&#x20;   \$expect (equal (1 - 2) (-1))\n\nmain :: IO ()\nmain = defaultMain [test_Math]\n@\n\n@\n\$ ghc --make chell-example.hs\n\$ ./chell-example\nPASS: 2 tests run, 2 tests passed\n@";
        buildType = "Simple";
      };
      components = {
        chell = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.options
            hsPkgs.patience
            hsPkgs.random
            hsPkgs.system-filepath
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
          ] ++ pkgs.lib.optional _flags.color-output hsPkgs.ansi-terminal;
        };
      };
    }