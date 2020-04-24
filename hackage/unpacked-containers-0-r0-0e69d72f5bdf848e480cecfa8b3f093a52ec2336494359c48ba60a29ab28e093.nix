{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "unpacked-containers"; version = "0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2017-2018 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/unpacked-containers/";
      url = "";
      synopsis = "Unpacked containers via backpack";
      description = "This backpack mixin package supplies unpacked sets and maps exploiting backpack's ability to unpack through signatures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."utils" or ((hsPkgs.pkgs-errors).buildDepError "utils"))
          ];
        buildable = true;
        };
      sublibs = {
        "utils" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            ];
          buildable = true;
          };
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      exes = {
        "unpacked-set-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unpacked-containers" or ((hsPkgs.pkgs-errors).buildDepError "unpacked-containers"))
            (hsPkgs."example" or ((hsPkgs.pkgs-errors).buildDepError "example"))
            ];
          buildable = true;
          };
        };
      };
    }