{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "distribution-nixpkgs"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "";
      homepage = "https://github.com/peti/distribution-nixpkgs#readme";
      url = "";
      synopsis = "Types and functions to manipulate the Nixpkgs distribution";
      description = "Types and functions to represent, query, and manipulate the Nixpkgs distribution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
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
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.distribution-nixpkgs)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            ];
          };
        };
      };
    }