{
  "0.1.0" = {
    sha256 = "8abd2574ec7ac94ad213fad640e39bc93924331b3e520857950aa759679e5876";
    revisions = {
      r0 = {
        nix = import ../hackage/network-transport-quic-0.1.0-r0-b88feb26c02ba2a05fbe523e1e6b34cdf1a876995670e9a4169d16b4c36da330.nix;
        revNum = 0;
        sha256 = "b88feb26c02ba2a05fbe523e1e6b34cdf1a876995670e9a4169d16b4c36da330";
      };
      r1 = {
        nix = import ../hackage/network-transport-quic-0.1.0-r1-b9c74aa72df18e609f0fe1be458a3ded1f3dbb4300f9d10802fc3b2051f8b022.nix;
        revNum = 1;
        sha256 = "b9c74aa72df18e609f0fe1be458a3ded1f3dbb4300f9d10802fc3b2051f8b022";
      };
      r2 = {
        nix = import ../hackage/network-transport-quic-0.1.0-r2-e59bbe63c3c0bc8f5cf4dc24597e62de84825a9d38923503c79ea2a0aa984315.nix;
        revNum = 2;
        sha256 = "e59bbe63c3c0bc8f5cf4dc24597e62de84825a9d38923503c79ea2a0aa984315";
      };
      default = "r2";
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
      r1 = {
        nix = import ../hackage/network-transport-quic-0.1.1-r1-e851ac4adbbb037060f104c5cb4dac8c942276555704dc2a31edb971453ea96a.nix;
        revNum = 1;
        sha256 = "e851ac4adbbb037060f104c5cb4dac8c942276555704dc2a31edb971453ea96a";
      };
      r2 = {
        nix = import ../hackage/network-transport-quic-0.1.1-r2-c82e451b0d28759339e0ab72c960caba398de7cf1a1aa30044c2aa0cbd46953a.nix;
        revNum = 2;
        sha256 = "c82e451b0d28759339e0ab72c960caba398de7cf1a1aa30044c2aa0cbd46953a";
      };
      default = "r2";
    };
  };
}