{
  "0.1.0.0" = {
    sha256 = "244fc265c740eebb3f8e0fc65027024bf5e978cfa0f4c3ec9440922081556350";
    revisions = {
      r0 = {
        nix = import ../hackage/cloudchor-0.1.0.0-r0-51beea36a95c54cb9cde3dc98116e1a58853774c2afcda63da207f611447efbe.nix;
        revNum = 0;
        sha256 = "51beea36a95c54cb9cde3dc98116e1a58853774c2afcda63da207f611447efbe";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "91342928ff15738d05f7866add0861422e34b54399c3402e97fe7e0422e1387a";
    revisions = {
      r0 = {
        nix = import ../hackage/cloudchor-0.1.0.1-r0-0d44b037676edd8efd70066cfd8a0689e4c641aa0e5df4f3330894c08e0fc825.nix;
        revNum = 0;
        sha256 = "0d44b037676edd8efd70066cfd8a0689e4c641aa0e5df4f3330894c08e0fc825";
      };
      default = "r0";
    };
  };
}