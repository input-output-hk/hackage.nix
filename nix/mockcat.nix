{
  "0.1.0.0" = {
    sha256 = "feb7f9dd807e7176af03066d2d2f133e4903a3a7154aad6401707b3055d0db2b";
    revisions = {
      r0 = {
        nix = import ../hackage/mockcat-0.1.0.0-r0-b4c51dc35ec2cd139a5f2a7e1daba3a5804dbb0d01d744cfbc05ff3f341c28c1.nix;
        revNum = 0;
        sha256 = "b4c51dc35ec2cd139a5f2a7e1daba3a5804dbb0d01d744cfbc05ff3f341c28c1";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "45e11c6f4c92f9f7b0f0d4bd7f63112b2e63f8cf691a20c2c091db03ba9cca79";
    revisions = {
      r0 = {
        nix = import ../hackage/mockcat-0.2.0.0-r0-4cb88c85f7f7065d78134ac0bcb9fa8bc8ec3fe4e20b6a8ee213c45577cf0b4d.nix;
        revNum = 0;
        sha256 = "4cb88c85f7f7065d78134ac0bcb9fa8bc8ec3fe4e20b6a8ee213c45577cf0b4d";
      };
      default = "r0";
    };
  };
}