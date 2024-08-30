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
      identifier = { name = "bytestring-lexing"; version = "0.5.0.14"; };
      license = "BSD-3-Clause";
      copyright = "2012–2024 wren romano, 2008–2011 Don Stewart";
      maintainer = "wren@cpan.org";
      author = "wren gayle romano, Don Stewart";
      homepage = "https://wrengr.org/software/hackage.html";
      url = "";
      synopsis = "Efficiently parse and produce common integral and fractional numbers.";
      description = "The bytestring-lexing package offers extremely efficient `ByteString`\nparsers for some common lexemes: namely integral and fractional\nnumbers. In addition, it provides efficient serializers for (some\nof) the formats it parses.\n\nAs of version 0.3.0, bytestring-lexing offers the best-in-show\nparsers for integral values. (According to the Warp web server's\nbenchmark of parsing the Content-Length field of HTTP headers.) And\nas of version 0.5.0 it offers (to my knowledge) the best-in-show\nparser for fractional/floating numbers.\n\nSome benchmarks for this package can be found at:\n<https://github.com/wrengr/bytestring-lexing/tree/master/bench/html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }