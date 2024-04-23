{
  "0.0.0.0" = {
    sha256 = "a6f4152219ccde1edf2f86a28ef6e5f9464b012a9f513d11a3b79063dd3d845f";
    revisions = {
      r0 = {
        nix = import ../hackage/artifact-0.0.0.0-r0-56c541b2752364dfda6efe4d140701a0763282dd6b8c8ba5de863a91ebc4d7df.nix;
        revNum = 0;
        sha256 = "56c541b2752364dfda6efe4d140701a0763282dd6b8c8ba5de863a91ebc4d7df";
      };
      r1 = {
        nix = import ../hackage/artifact-0.0.0.0-r1-a47962d51a45c390e060794442b7be75ada80fcbc9067efc9a007d473ae81526.nix;
        revNum = 1;
        sha256 = "a47962d51a45c390e060794442b7be75ada80fcbc9067efc9a007d473ae81526";
      };
      default = "r1";
    };
  };
}