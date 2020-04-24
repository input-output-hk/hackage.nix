{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "network-ip"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2011-2013 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/network-ip";
      url = "";
      synopsis = "Internet Protocol data structures";
      description = "This package provides Internet Protocol data structures";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."data-endian" or ((hsPkgs.pkgs-errors).buildDepError "data-endian"))
          (hsPkgs."data-dword" or ((hsPkgs.pkgs-errors).buildDepError "data-dword"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."text-printer" or ((hsPkgs.pkgs-errors).buildDepError "text-printer"))
          (hsPkgs."data-textual" or ((hsPkgs.pkgs-errors).buildDepError "data-textual"))
          (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."data-dword" or ((hsPkgs.pkgs-errors).buildDepError "data-dword"))
            (hsPkgs."text-printer" or ((hsPkgs.pkgs-errors).buildDepError "text-printer"))
            (hsPkgs."data-textual" or ((hsPkgs.pkgs-errors).buildDepError "data-textual"))
            (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
            (hsPkgs."network-ip" or ((hsPkgs.pkgs-errors).buildDepError "network-ip"))
            ];
          buildable = true;
          };
        };
      };
    }