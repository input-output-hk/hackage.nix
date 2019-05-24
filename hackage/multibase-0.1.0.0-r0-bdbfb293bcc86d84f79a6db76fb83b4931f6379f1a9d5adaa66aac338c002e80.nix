{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "multibase"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Monadic GmbH";
      maintainer = "Kim Altintop <kim@monadic.xyz>, Monadic Team <team@monadic.xyz>";
      author = "Kim Altintop";
      homepage = "https://github.com/oscoin/ipfs";
      url = "";
      synopsis = "Self-identifying base encodings, implementation of <https://github.com/multiformats/multihash>";
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
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base32-z-bytestring)
          (hsPkgs.base58-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.formatting)
          (hsPkgs.hashable)
          (hsPkgs.sandi)
          (hsPkgs.serialise)
          (hsPkgs.tagged)
          (hsPkgs.text)
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.multibase)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }