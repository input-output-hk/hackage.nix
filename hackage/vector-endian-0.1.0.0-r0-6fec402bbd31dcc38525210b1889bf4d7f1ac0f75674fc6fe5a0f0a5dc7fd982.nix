{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "vector-endian"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Ian Denhardt";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://git.zenhack.net/zenhack/haskell-vector-endian";
      url = "";
      synopsis = "Storable vectors with cpu-independent representation.";
      description = "This package exposes data types that implement the type classes from the\nvector package, but the vectors have an in-memory representation that\nis independent of the host's CPU.\n\nThis makes the data stored within them suitable for storage or transmission\nover a network, and they can be converted to bytestrings without copying.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."zenhack-prelude" or ((hsPkgs.pkgs-errors).buildDepError "zenhack-prelude"))
          (hsPkgs."cpu" or ((hsPkgs.pkgs-errors).buildDepError "cpu"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."endian-common" or ((hsPkgs.pkgs-errors).buildDepError "endian-common"))
          (hsPkgs."vector-endian-big" or ((hsPkgs.pkgs-errors).buildDepError "vector-endian-big"))
          (hsPkgs."vector-endian-little" or ((hsPkgs.pkgs-errors).buildDepError "vector-endian-little"))
          ];
        buildable = true;
        };
      sublibs = {
        "endian-common" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."zenhack-prelude" or ((hsPkgs.pkgs-errors).buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or ((hsPkgs.pkgs-errors).buildDepError "cpu"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "little-endian" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."zenhack-prelude" or ((hsPkgs.pkgs-errors).buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or ((hsPkgs.pkgs-errors).buildDepError "cpu"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."endian-common" or ((hsPkgs.pkgs-errors).buildDepError "endian-common"))
            ];
          buildable = true;
          };
        "big-endian" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."zenhack-prelude" or ((hsPkgs.pkgs-errors).buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or ((hsPkgs.pkgs-errors).buildDepError "cpu"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."endian-common" or ((hsPkgs.pkgs-errors).buildDepError "endian-common"))
            ];
          buildable = true;
          };
        "vector-endian-indef" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."zenhack-prelude" or ((hsPkgs.pkgs-errors).buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or ((hsPkgs.pkgs-errors).buildDepError "cpu"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."endian-common" or ((hsPkgs.pkgs-errors).buildDepError "endian-common"))
            ];
          buildable = true;
          };
        "vector-endian-little" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."zenhack-prelude" or ((hsPkgs.pkgs-errors).buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or ((hsPkgs.pkgs-errors).buildDepError "cpu"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."vector-endian-indef" or ((hsPkgs.pkgs-errors).buildDepError "vector-endian-indef"))
            (hsPkgs."little-endian" or ((hsPkgs.pkgs-errors).buildDepError "little-endian"))
            ];
          buildable = true;
          };
        "vector-endian-big" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."zenhack-prelude" or ((hsPkgs.pkgs-errors).buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or ((hsPkgs.pkgs-errors).buildDepError "cpu"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."vector-endian-indef" or ((hsPkgs.pkgs-errors).buildDepError "vector-endian-indef"))
            (hsPkgs."big-endian" or ((hsPkgs.pkgs-errors).buildDepError "big-endian"))
            ];
          buildable = true;
          };
        };
      };
    }