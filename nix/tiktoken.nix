{
  "1.0.0" = {
    sha256 = "3b723f06fd30934618422cc827c9bef8aed033d38431a54a39f34acdad2c66ac";
    revisions = {
      r0 = {
        nix = import ../hackage/tiktoken-1.0.0-r0-bd3aebc5d8df2633f07a01726a08bf39cc252d48c75f8469c446ad444696b819.nix;
        revNum = 0;
        sha256 = "bd3aebc5d8df2633f07a01726a08bf39cc252d48c75f8469c446ad444696b819";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "5403200d288eec47d6dc3a5f4faf8a16a2704be899d723c7624f4ee40b894b6a";
    revisions = {
      r0 = {
        nix = import ../hackage/tiktoken-1.0.1-r0-aa2d3846a0883622fc75770fe61ac3b17a64a00e08e8ac7ca19b21e041006b48.nix;
        revNum = 0;
        sha256 = "aa2d3846a0883622fc75770fe61ac3b17a64a00e08e8ac7ca19b21e041006b48";
      };
      default = "r0";
    };
  };
}