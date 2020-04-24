{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "gnuidn"; version = "0.2.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "https://john-millikin.com/software/haskell-gnuidn/";
      url = "";
      synopsis = "Bindings for GNU IDN";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [ (pkgs."idn" or ((hsPkgs.pkgs-errors).sysDepError "idn")) ];
        pkgconfig = [
          (pkgconfPkgs."libidn" or ((hsPkgs.pkgs-errors).pkgConfDepError "libidn"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "gnuidn_tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."chell" or ((hsPkgs.pkgs-errors).buildDepError "chell"))
            (hsPkgs."chell-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "chell-quickcheck"))
            (hsPkgs."gnuidn" or ((hsPkgs.pkgs-errors).buildDepError "gnuidn"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          libs = [ (pkgs."idn" or ((hsPkgs.pkgs-errors).sysDepError "idn")) ];
          pkgconfig = [
            (pkgconfPkgs."libidn" or ((hsPkgs.pkgs-errors).pkgConfDepError "libidn"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
            ];
          buildable = true;
          };
        };
      };
    }