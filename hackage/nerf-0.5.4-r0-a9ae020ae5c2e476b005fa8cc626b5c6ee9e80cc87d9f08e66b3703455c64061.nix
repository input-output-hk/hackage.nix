{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "nerf"; version = "0.5.4"; };
      license = "BSD-3-Clause";
      copyright = "2012-2019 IPI PAN, Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/nerf#readme";
      url = "";
      synopsis = "Nerf, a named entity recognition tool based on linear-chain CRFs";
      description = "Please see the README on GitHub at <https://github.com/kawu/nerf#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."IntervalMap" or ((hsPkgs.pkgs-errors).buildDepError "IntervalMap"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."crf-chain1" or ((hsPkgs.pkgs-errors).buildDepError "crf-chain1"))
          (hsPkgs."data-named" or ((hsPkgs.pkgs-errors).buildDepError "data-named"))
          (hsPkgs."dawg" or ((hsPkgs.pkgs-errors).buildDepError "dawg"))
          (hsPkgs."monad-ox" or ((hsPkgs.pkgs-errors).buildDepError "monad-ox"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."polimorf" or ((hsPkgs.pkgs-errors).buildDepError "polimorf"))
          (hsPkgs."polysoup" or ((hsPkgs.pkgs-errors).buildDepError "polysoup"))
          (hsPkgs."sgd" or ((hsPkgs.pkgs-errors).buildDepError "sgd"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
          (hsPkgs."tokenize" or ((hsPkgs.pkgs-errors).buildDepError "tokenize"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "nerf" = {
          depends = [
            (hsPkgs."IntervalMap" or ((hsPkgs.pkgs-errors).buildDepError "IntervalMap"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."crf-chain1" or ((hsPkgs.pkgs-errors).buildDepError "crf-chain1"))
            (hsPkgs."data-named" or ((hsPkgs.pkgs-errors).buildDepError "data-named"))
            (hsPkgs."dawg" or ((hsPkgs.pkgs-errors).buildDepError "dawg"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."monad-ox" or ((hsPkgs.pkgs-errors).buildDepError "monad-ox"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."nerf" or ((hsPkgs.pkgs-errors).buildDepError "nerf"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."polimorf" or ((hsPkgs.pkgs-errors).buildDepError "polimorf"))
            (hsPkgs."polysoup" or ((hsPkgs.pkgs-errors).buildDepError "polysoup"))
            (hsPkgs."sgd" or ((hsPkgs.pkgs-errors).buildDepError "sgd"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
            (hsPkgs."tokenize" or ((hsPkgs.pkgs-errors).buildDepError "tokenize"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }