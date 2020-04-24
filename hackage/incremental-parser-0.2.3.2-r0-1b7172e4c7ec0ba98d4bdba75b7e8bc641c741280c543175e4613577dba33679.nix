{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "incremental-parser"; version = "0.2.3.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2011-2013 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "http://patch-tag.com/r/blamario/incremental-parser/wiki/";
      url = "";
      synopsis = "Generic parser library capable of providing partial results from partial input.";
      description = "This package defines yet another parser library. This one is implemented using the concept of Brzozowski derivatives,\ntweaked and optimized to work with any monoidal input type. Lists, ByteString, and Text are supported out of the box,\nas well as any other data type for which the monoid-subclasses package defines instances.\nIf the parser result is also a monoid, the parser can provide it incrementally, before the complete input is parsed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monoid-subclasses" or ((hsPkgs.pkgs-errors).buildDepError "monoid-subclasses"))
          ];
        buildable = true;
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."monoid-subclasses" or ((hsPkgs.pkgs-errors).buildDepError "monoid-subclasses"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."checkers" or ((hsPkgs.pkgs-errors).buildDepError "checkers"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }