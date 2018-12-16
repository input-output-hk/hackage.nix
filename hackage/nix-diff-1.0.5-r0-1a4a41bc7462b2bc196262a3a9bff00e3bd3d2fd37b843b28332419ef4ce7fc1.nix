{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nix-diff";
        version = "1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "https://github.com/Gabriel439/nix-diff";
      url = "";
      synopsis = "Explain why two Nix derivations differ";
      description = "This package provides a @nix-diff@ executable which\nexplains why two Nix derivations (i.e. @*.drv@ files)\ndiffer";
      buildType = "Simple";
    };
    components = {
      exes = {
        "nix-diff" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.containers)
            (hsPkgs.Diff)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.nix-derivation)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }