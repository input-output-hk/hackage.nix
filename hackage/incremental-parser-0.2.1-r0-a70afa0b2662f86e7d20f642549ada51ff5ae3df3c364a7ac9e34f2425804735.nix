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
        name = "incremental-parser";
        version = "0.2.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2011 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "http://patch-tag.com/r/blamario/incremental-parser/wiki/";
      url = "";
      synopsis = "Generic parser library capable of providing partial results from partial input.";
      description = "This package defines yet another parser library. This one is implemented using the concept of Brzozowski derivatives,\ntweaked and optimized to work with any monoidal input type. Lists, ByteString, and Text are supported out of the box.\nIf the parser result is also a monoid, the parser can provide it incrementally, before the complete input is parsed.";
      buildType = "Simple";
    };
    components = {
      "incremental-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "Main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            (hsPkgs.checkers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }