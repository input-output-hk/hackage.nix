{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "builder"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2019 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "https://github.com/chessai/builder";
      url = "";
      synopsis = "bounded ByteArray builder type";
      description = "A Builder type for ByteArray. Appending these builders\ncan be cheaper than when appending ByteArray values, since\nonly one buffer allocation is performed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."byte-order" or ((hsPkgs.pkgs-errors).buildDepError "byte-order"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."primitive-unaligned" or ((hsPkgs.pkgs-errors).buildDepError "primitive-unaligned"))
          ];
        buildable = true;
        };
      };
    }