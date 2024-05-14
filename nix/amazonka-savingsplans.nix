{
  "2.0" = {
    sha256 = "9deef6523b816f7ea70ec79dde374b1e55c47db9ca0928b36d8034e76932c944";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-savingsplans-2.0-r0-5e05ea18c4b61606ab0ab7778a6b37ca2a8593865e0f08567ed66401e4647c26.nix;
        revNum = 0;
        sha256 = "5e05ea18c4b61606ab0ab7778a6b37ca2a8593865e0f08567ed66401e4647c26";
      };
      r1 = {
        nix = import ../hackage/amazonka-savingsplans-2.0-r1-50e7932ecc35b3dad39183903b73f21adf03db702773cba369691df3c7a1e6e8.nix;
        revNum = 1;
        sha256 = "50e7932ecc35b3dad39183903b73f21adf03db702773cba369691df3c7a1e6e8";
      };
      default = "r1";
    };
  };
}