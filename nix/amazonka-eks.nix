{
  "2.0" = {
    sha256 = "59f4c5fb8bbd29ffd6a0bea99829f588effa8875bcc7e4e37fbd9b45de7a007b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-eks-2.0-r0-a009288ab7bfe6fb6cd1cb924bf4f31d36e2df3807e43a280f9434957c5935b9.nix;
        revNum = 0;
        sha256 = "a009288ab7bfe6fb6cd1cb924bf4f31d36e2df3807e43a280f9434957c5935b9";
      };
      r1 = {
        nix = import ../hackage/amazonka-eks-2.0-r1-6cf2f1146d39aaa2f3b01e101ffffaf78c136df783e4907ae6f9f46b47409ab3.nix;
        revNum = 1;
        sha256 = "6cf2f1146d39aaa2f3b01e101ffffaf78c136df783e4907ae6f9f46b47409ab3";
      };
      default = "r1";
    };
  };
}