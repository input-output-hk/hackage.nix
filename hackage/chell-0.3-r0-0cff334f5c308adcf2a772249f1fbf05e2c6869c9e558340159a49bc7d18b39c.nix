{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { color-output = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "chell"; version = "0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/chell/";
      url = "";
      synopsis = "A simple and intuitive library for automated testing.";
      description = "Chell is a simple and intuitive library for automated testing. It natively\nsupports assertion-based testing, and can use companion libraries\nsuch as @chell-quickcheck@ to support more complex testing strategies.\n\nAn example test suite, which verifies the behavior of artithmetic operators.\n\n@\n&#x7b;-\\# LANGUAGE TemplateHaskell \\#-&#x7d;\n\nimport Test.Chell\n\ntests_Math :: Suite\ntests_Math = suite \\\"math\\\"\n&#x20;   test_Addition\n&#x20;   test_Subtraction\n\ntest_Addition :: Test\ntest_Addition = assertions \\\"addition\\\" \$ do\n&#x20;   \$expect (equal (2 + 1) 3)\n&#x20;   \$expect (equal (1 + 2) 3)\n\ntest_Subtraction :: Test\ntest_Subtraction = assertions \\\"subtraction\\\" \$ do\n&#x20;   \$expect (equal (2 - 1) 1)\n&#x20;   \$expect (equal (1 - 2) (-1))\n\nmain :: IO ()\nmain = defaultMain [tests_Math]\n@\n\n@\n\$ ghc --make chell-example.hs\n\$ ./chell-example\nPASS: 2 tests run, 2 tests passed\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.options)
          (hsPkgs.patience)
          (hsPkgs.random)
          (hsPkgs.system-filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optional (flags.color-output) (hsPkgs.ansi-terminal);
        };
      };
    }