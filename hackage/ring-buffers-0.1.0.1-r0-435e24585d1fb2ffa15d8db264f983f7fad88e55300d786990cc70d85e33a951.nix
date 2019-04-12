{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { checked = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ring-buffers"; version = "0.1.0.1"; };
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
        depends = [ (hsPkgs.base) (hsPkgs.semirings) ] ++ (if flags.checked
          then [ (hsPkgs.contiguous-checked) (hsPkgs.primitive-checked) ]
          else [ (hsPkgs.contiguous) (hsPkgs.primitive) ]);
        };
      };
    }