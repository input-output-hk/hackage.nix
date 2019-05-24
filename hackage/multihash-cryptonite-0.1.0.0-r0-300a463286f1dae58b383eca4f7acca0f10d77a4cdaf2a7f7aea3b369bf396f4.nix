{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "multihash-cryptonite"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Monadic GmbH";
      maintainer = "Kim Altintop <kim@monadic.xyz>, Monadic Team <team@monadic.xyz>";
      author = "Kim Altintop";
      homepage = "https://github.com/oscoin/ipfs";
      url = "";
      synopsis = "Self-identifying hashes, implementation of <https://github.com/multiformats/multihash>";
      description = "";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-varint)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.cryptonite)
          (hsPkgs.hashable)
          (hsPkgs.memory)
          ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cryptonite)
            (hsPkgs.hedgehog)
            (hsPkgs.multihash-cryptonite)
            ];
          };
        "doctests" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }