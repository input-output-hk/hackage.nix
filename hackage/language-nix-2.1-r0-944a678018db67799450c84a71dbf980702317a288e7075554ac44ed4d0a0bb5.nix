{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-nix"; version = "2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons";
      homepage = "https://github.com/peti/language-nix#readme";
      url = "";
      synopsis = "Data types and useful functions to represent and manipulate the Nix language.";
      description = "Data types and useful functions to represent and manipulate the Nix language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.Cabal)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.pretty)
          (hsPkgs.QuickCheck)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.Cabal)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.pretty)
            (hsPkgs.QuickCheck)
            (hsPkgs.doctest)
            ];
          };
        };
      };
    }