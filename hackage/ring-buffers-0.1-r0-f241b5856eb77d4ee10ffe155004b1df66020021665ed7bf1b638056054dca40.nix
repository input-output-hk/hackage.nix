{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { checked = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ring-buffers"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/ring-buffers";
      url = "";
      synopsis = "mutable ring buffers with atomic updates in GHC Haskell";
      description = "mutable ring buffers with atomic updates in GHC Haskell, using the contiguous api internally to provide multiple array backends";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"))
          ] ++ (if flags.checked
          then [
            (hsPkgs."contiguous-checked" or ((hsPkgs.pkgs-errors).buildDepError "contiguous-checked"))
            (hsPkgs."primitive-checked" or ((hsPkgs.pkgs-errors).buildDepError "primitive-checked"))
            ]
          else [
            (hsPkgs."contiguous" or ((hsPkgs.pkgs-errors).buildDepError "contiguous"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            ]);
        buildable = true;
        };
      };
    }