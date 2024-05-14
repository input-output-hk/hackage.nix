{
  "2.0" = {
    sha256 = "103d145ed9a56022fb4773e5b811faaa7a697890558ca2d133bbe9544bab0a06";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-globalaccelerator-2.0-r0-dcbbcbc6eed991b8d61ccf84b9a69cd7cff5025c012d27b2d6a20d5e83aa46d4.nix;
        revNum = 0;
        sha256 = "dcbbcbc6eed991b8d61ccf84b9a69cd7cff5025c012d27b2d6a20d5e83aa46d4";
      };
      r1 = {
        nix = import ../hackage/amazonka-globalaccelerator-2.0-r1-a1128f3b6c72ed08621ce8ef03be51eb97513df26b4cd3864df703453af9d67e.nix;
        revNum = 1;
        sha256 = "a1128f3b6c72ed08621ce8ef03be51eb97513df26b4cd3864df703453af9d67e";
      };
      default = "r1";
    };
  };
}