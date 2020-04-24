{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "gray-extended"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Amy de Buitléir 2010-2012";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "https://github.com/mhwombat/gray-extended";
      url = "";
      synopsis = "Gray encoding schemes";
      description = "Gray codes satisfy the property that two successive values\ndiffer in only one digit. Usually the term \\\"Gray code\\\"\nrefers to the Binary Reflected Gray code (BRGC),  but\nnon-binary Gray codes have also been discovered.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          ];
        buildable = true;
        };
      tests = {
        "gray-extended-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
            (hsPkgs."gray-extended" or ((hsPkgs.pkgs-errors).buildDepError "gray-extended"))
            ];
          buildable = true;
          };
        };
      };
    }