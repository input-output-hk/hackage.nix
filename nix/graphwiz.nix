{
  "1.0.0" = {
    sha256 = "036ca67e865da8d02a79db59c4ae20ed1abd1bb3f02b69283d006c7e9e6e4d6b";
    revisions = {
      r0 = {
        nix = import ../hackage/graphwiz-1.0.0-r0-04efe58def5fe1004c237dd26671006fe1ea81e989c024c14a743659bf5fe976.nix;
        revNum = 0;
        sha256 = "04efe58def5fe1004c237dd26671006fe1ea81e989c024c14a743659bf5fe976";
      };
      default = "r0";
    };
  };
  "2.0.0" = {
    sha256 = "de73e9c4027127ceb72b77a10e86d8d1cbe92d2d09e1b89af29a5beadfcb06d2";
    revisions = {
      r0 = {
        nix = import ../hackage/graphwiz-2.0.0-r0-6a892b20c650954c5a9455cc282e8aa2f10a62ab88de0e2f01ed945d92aa9b0a.nix;
        revNum = 0;
        sha256 = "6a892b20c650954c5a9455cc282e8aa2f10a62ab88de0e2f01ed945d92aa9b0a";
      };
      default = "r0";
    };
  };
}