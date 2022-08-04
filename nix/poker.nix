{
  "0.1.0.0" = {
    sha256 = "25ff7c1a4234c07c6e04a0bc096cd1d583fb2679edbef7ec32387151f69b7e96";
    revisions = {
      r0 = {
        nix = import ../hackage/poker-0.1.0.0-r0-3f634168ba9ae8400bd4164d81fad227604b8d6c4d067937e997a5102e881b43.nix;
        revNum = 0;
        sha256 = "3f634168ba9ae8400bd4164d81fad227604b8d6c4d067937e997a5102e881b43";
        };
      r1 = {
        nix = import ../hackage/poker-0.1.0.0-r1-170a36f15e516ce625daa05f9f9ce7633e561977f0b617ad8f76ba6e82b4717c.nix;
        revNum = 1;
        sha256 = "170a36f15e516ce625daa05f9f9ce7633e561977f0b617ad8f76ba6e82b4717c";
        };
      default = "r1";
      };
    };
  }