{
  "1.0" = {
    sha256 = "983ab181c474172f722701dbebc7ed6bc51396738655b5c5a4cb9828f937b46b";
    revisions = {
      r0 = {
        nix = import ../hackage/LPFP-1.0-r0-d6d56b272276b61a45374bbb98dfefde9e1b781feb18f95c070eb51466b0f576.nix;
        revNum = 0;
        sha256 = "d6d56b272276b61a45374bbb98dfefde9e1b781feb18f95c070eb51466b0f576";
        };
      default = "r0";
      };
    };
  "1.1" = {
    sha256 = "e1a8cc349458c09e2b2162027057bdf4a2e6eacf85d0efa0266799869501b064";
    revisions = {
      r0 = {
        nix = import ../hackage/LPFP-1.1-r0-5a3e7bfd4a6394a34c137e9cdd715b282f9a423d78dd071efcecdae0dad4cb25.nix;
        revNum = 0;
        sha256 = "5a3e7bfd4a6394a34c137e9cdd715b282f9a423d78dd071efcecdae0dad4cb25";
        };
      default = "r0";
      };
    };
  }