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
        name = "distribution-nixpkgs";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "";
      homepage = "https://github.com/peti/distribution-nixpkgs#readme";
      url = "";
      synopsis = "Types and functions to manipulate the Nixpkgs distribution.";
      description = "Types and functions to represent, query, and manipulate the Nixpkgs distribution.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.language-nix)
          (hsPkgs.lens)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.split)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.language-nix)
            (hsPkgs.lens)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.distribution-nixpkgs)
            (hsPkgs.doctest)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }