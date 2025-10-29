{
  "0.1.0.0" = {
    sha256 = "ba17fa7216eb991a0f30316f425eab11fcfc57f317f2718a233f8e9fd2437a22";
    revisions = {
      r0 = {
        nix = import ../hackage/arxiv-client-0.1.0.0-r0-3388d0c35113dedec3dcda6c2770e6178d3874607f906543a1857031d5cc133c.nix;
        revNum = 0;
        sha256 = "3388d0c35113dedec3dcda6c2770e6178d3874607f906543a1857031d5cc133c";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "85a6716051ee45714ed57af10e513d83b742896414ef4cf2939eb090319928f2";
    revisions = {
      r0 = {
        nix = import ../hackage/arxiv-client-0.1.0.1-r0-5c5d890842b7ee63de5634c418e0051e390ef1df96239073f19ad1f942a7c273.nix;
        revNum = 0;
        sha256 = "5c5d890842b7ee63de5634c418e0051e390ef1df96239073f19ad1f942a7c273";
      };
      default = "r0";
    };
  };
}