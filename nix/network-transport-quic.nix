{
  "0.1.0" = {
    sha256 = "8abd2574ec7ac94ad213fad640e39bc93924331b3e520857950aa759679e5876";
    revisions = {
      r0 = {
        nix = import ../hackage/network-transport-quic-0.1.0-r0-b88feb26c02ba2a05fbe523e1e6b34cdf1a876995670e9a4169d16b4c36da330.nix;
        revNum = 0;
        sha256 = "b88feb26c02ba2a05fbe523e1e6b34cdf1a876995670e9a4169d16b4c36da330";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "8d905b5faf1c0f0d894092131c3ec3cd93a0908a35d6d760b9d3f00a507131bf";
    revisions = {
      r0 = {
        nix = import ../hackage/network-transport-quic-0.1.1-r0-495438e4d3f6d82f5306cb2756145ebaa68645d7e9ba9715378f8bb7f3db1429.nix;
        revNum = 0;
        sha256 = "495438e4d3f6d82f5306cb2756145ebaa68645d7e9ba9715378f8bb7f3db1429";
      };
      default = "r0";
    };
  };
}