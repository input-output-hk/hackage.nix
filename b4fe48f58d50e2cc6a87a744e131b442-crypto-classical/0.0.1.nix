{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crypto-classical";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "colingw@gmail.com";
        author = "Colin Woodbury";
        homepage = "https://github.com/fosskers/crypto-classical";
        url = "";
        synopsis = "An educational tool for studying classical cryptography schemes.";
        description = "An educational tool for studying classical cryptography\nschemes. Do not encrypt anything of worth with this\nlibrary.";
        buildType = "Simple";
      };
      components = {
        crypto-classical = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.crypto-numbers
            hsPkgs.crypto-random
            hsPkgs.lens
            hsPkgs.modular-arithmetic
            hsPkgs.random
            hsPkgs.random-shuffle
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }