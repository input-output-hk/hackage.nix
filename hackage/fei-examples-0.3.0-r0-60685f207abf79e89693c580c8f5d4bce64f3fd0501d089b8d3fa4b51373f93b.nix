{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fei-examples"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Jiasen Wu";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/fei-examples#readme";
      url = "";
      synopsis = "fei examples";
      description = "Various fei examples";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lenet" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."fei-base" or ((hsPkgs.pkgs-errors).buildDepError "fei-base"))
            (hsPkgs."fei-nn" or ((hsPkgs.pkgs-errors).buildDepError "fei-nn"))
            (hsPkgs."fei-dataiter" or ((hsPkgs.pkgs-errors).buildDepError "fei-dataiter"))
            ];
          buildable = true;
          };
        "cifar10" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."fei-base" or ((hsPkgs.pkgs-errors).buildDepError "fei-base"))
            (hsPkgs."fei-nn" or ((hsPkgs.pkgs-errors).buildDepError "fei-nn"))
            (hsPkgs."fei-dataiter" or ((hsPkgs.pkgs-errors).buildDepError "fei-dataiter"))
            ];
          buildable = true;
          };
        "custom-op" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fei-base" or ((hsPkgs.pkgs-errors).buildDepError "fei-base"))
            (hsPkgs."fei-nn" or ((hsPkgs.pkgs-errors).buildDepError "fei-nn"))
            (hsPkgs."fei-dataiter" or ((hsPkgs.pkgs-errors).buildDepError "fei-dataiter"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "rcnn" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."fei-base" or ((hsPkgs.pkgs-errors).buildDepError "fei-base"))
            (hsPkgs."fei-nn" or ((hsPkgs.pkgs-errors).buildDepError "fei-nn"))
            (hsPkgs."fei-dataiter" or ((hsPkgs.pkgs-errors).buildDepError "fei-dataiter"))
            (hsPkgs."fei-cocoapi" or ((hsPkgs.pkgs-errors).buildDepError "fei-cocoapi"))
            ];
          buildable = true;
          };
        };
      };
    }