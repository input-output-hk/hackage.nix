{
  "0.1.0.0" = {
    sha256 = "29d9fa9201383e8a74c992df344450d65c8949ffe52204e0a5092248cf43111f";
    revisions = {
      r0 = {
        nix = import ../hackage/clr-typed-0.1.0.0-r0-ff72783ef31e9fdfac5cc355c66ed13943c770c4f7f26a13dd10c9d894e02345.nix;
        revNum = 0;
        sha256 = "ff72783ef31e9fdfac5cc355c66ed13943c770c4f7f26a13dd10c9d894e02345";
      };
      r1 = {
        nix = import ../hackage/clr-typed-0.1.0.0-r1-4bd80a1d9a2303e5756db026098cb1238c42c6bbafa595acc51ee4089382da09.nix;
        revNum = 1;
        sha256 = "4bd80a1d9a2303e5756db026098cb1238c42c6bbafa595acc51ee4089382da09";
      };
      default = "r1";
    };
  };
  "0.2.0" = {
    sha256 = "5ecc3faebeab0a23274f75ec6013c0a1ecdeb080aa955d17247933e6c049c3ab";
    revisions = {
      r0 = {
        nix = import ../hackage/clr-typed-0.2.0-r0-1b89eeaeb96795213cf46eada1e80e7e2c648c852e00cf9509eae116cea12ba7.nix;
        revNum = 0;
        sha256 = "1b89eeaeb96795213cf46eada1e80e7e2c648c852e00cf9509eae116cea12ba7";
      };
      default = "r0";
    };
  };
}