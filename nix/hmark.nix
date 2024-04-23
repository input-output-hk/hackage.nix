{
  "1.0.0" = {
    sha256 = "445740cb147457a08ff1ca27fa5d3ad5e1eb197d59dec3636dbce01f3c4e6672";
    revisions = {
      r0 = {
        nix = import ../hackage/hmark-1.0.0-r0-a64677c8313e14440afe2d2217c811c427d1326d69d8dda76e4b0f27b7c1c685.nix;
        revNum = 0;
        sha256 = "a64677c8313e14440afe2d2217c811c427d1326d69d8dda76e4b0f27b7c1c685";
      };
      default = "r0";
    };
  };
  "1.2" = {
    sha256 = "eff5358aedb4e8740f05f72cb198986dad28766b6ddf84598d0cb256166491e8";
    revisions = {
      r0 = {
        nix = import ../hackage/hmark-1.2-r0-bf09d753555c67b06e82b5dff7c0dd3a5e806678b4722d3c36722e6f035e65ec.nix;
        revNum = 0;
        sha256 = "bf09d753555c67b06e82b5dff7c0dd3a5e806678b4722d3c36722e6f035e65ec";
      };
      default = "r0";
    };
  };
}