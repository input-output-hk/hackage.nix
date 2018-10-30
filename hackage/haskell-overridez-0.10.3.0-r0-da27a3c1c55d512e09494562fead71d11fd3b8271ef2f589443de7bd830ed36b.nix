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
      specVersion = "2.0";
      identifier = {
        name = "haskell-overridez";
        version = "0.10.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tim.emiola@gmail.com";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/haskell-overridez";
      url = "";
      synopsis = "Manage nix overrides for haskell packages";
      description = "A tool to simplify the use of nix overrides during haskell development";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haskell-overridez" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.aeson-casing)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.foldl)
            (hsPkgs.managed)
            (hsPkgs.neat-interpolation)
            (hsPkgs.network-uri)
            (hsPkgs.optparse-applicative)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.turtle)
          ];
        };
      };
    };
  }