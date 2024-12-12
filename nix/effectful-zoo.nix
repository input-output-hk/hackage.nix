{
  "0.0.0.1" = {
    sha256 = "a788782224b02a9937e1c6bb1773b9ee5c49f43fb1dfd9c4fcf6c56303f8ad18";
    revisions = {
      r0 = {
        nix = import ../hackage/effectful-zoo-0.0.0.1-r0-499c0edf4f3880657d1b17eb44e5defc1df5480ed00fc987ab0f80f972365ec2.nix;
        revNum = 0;
        sha256 = "499c0edf4f3880657d1b17eb44e5defc1df5480ed00fc987ab0f80f972365ec2";
      };
      default = "r0";
    };
  };
  "0.0.1.0" = {
    sha256 = "02c5f47bdf8207e1c2681494bb322306a0acbc51d06ebc49c51599556df3d249";
    revisions = {
      r0 = {
        nix = import ../hackage/effectful-zoo-0.0.1.0-r0-06b24d007c3477a538067d135b714b791cf35fb5b0622fa0431c13570c97ca99.nix;
        revNum = 0;
        sha256 = "06b24d007c3477a538067d135b714b791cf35fb5b0622fa0431c13570c97ca99";
      };
      default = "r0";
    };
  };
}