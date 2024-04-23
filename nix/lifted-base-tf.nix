{
  "0.1.0.0" = {
    sha256 = "3d3265dadea6447fd09c7fc37a0e23d8d9e737b9d7de5b964e98676c964170bc";
    revisions = {
      r0 = {
        nix = import ../hackage/lifted-base-tf-0.1.0.0-r0-09ec84fe79fd094ded9d99e34a4ba0c597225a268942b63fb863321c12f672ad.nix;
        revNum = 0;
        sha256 = "09ec84fe79fd094ded9d99e34a4ba0c597225a268942b63fb863321c12f672ad";
      };
      r1 = {
        nix = import ../hackage/lifted-base-tf-0.1.0.0-r1-f30e1a875b761cc80c74b8d189a03090df916b65ca641ca3aba98a85476ee09a.nix;
        revNum = 1;
        sha256 = "f30e1a875b761cc80c74b8d189a03090df916b65ca641ca3aba98a85476ee09a";
      };
      r2 = {
        nix = import ../hackage/lifted-base-tf-0.1.0.0-r2-3e288394e2a3c2ecff4b86d9994914a12f6336516f2e31edb25c49e5b8092259.nix;
        revNum = 2;
        sha256 = "3e288394e2a3c2ecff4b86d9994914a12f6336516f2e31edb25c49e5b8092259";
      };
      r3 = {
        nix = import ../hackage/lifted-base-tf-0.1.0.0-r3-69f0bd691d6ac7c22803ba8d2cabe718c6f3003daa8887e432c5df0b1bf5a6fc.nix;
        revNum = 3;
        sha256 = "69f0bd691d6ac7c22803ba8d2cabe718c6f3003daa8887e432c5df0b1bf5a6fc";
      };
      default = "r3";
    };
  };
}