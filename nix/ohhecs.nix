{
  "0.0.1" = {
    sha256 = "4c958674fd9b63551aec189a935b0e4ba329f68a3b8ac27504e3d8f9c1c74d07";
    revisions = {
      r0 = {
        nix = import ../hackage/ohhecs-0.0.1-r0-ece38fe1a8c6572cca7a38a24e138328f8a3acce2221d5f824642e2c23a4e7ac.nix;
        revNum = 0;
        sha256 = "ece38fe1a8c6572cca7a38a24e138328f8a3acce2221d5f824642e2c23a4e7ac";
      };
      r1 = {
        nix = import ../hackage/ohhecs-0.0.1-r1-eb05dc714be3ddf096ed3ea6fa6bad7664c331810c52e57f9be5249f4d847414.nix;
        revNum = 1;
        sha256 = "eb05dc714be3ddf096ed3ea6fa6bad7664c331810c52e57f9be5249f4d847414";
      };
      default = "r1";
    };
  };
  "0.0.2" = {
    sha256 = "175f1b8a49bb3ac01465780a059e4755c463c0cbe30a16f053bb1bb5452b8ae1";
    revisions = {
      r0 = {
        nix = import ../hackage/ohhecs-0.0.2-r0-8dd1f6d14cb5fe6064930b9d348620c366fbba786b63bb0465e5dc69e27c5885.nix;
        revNum = 0;
        sha256 = "8dd1f6d14cb5fe6064930b9d348620c366fbba786b63bb0465e5dc69e27c5885";
      };
      default = "r0";
    };
  };
}