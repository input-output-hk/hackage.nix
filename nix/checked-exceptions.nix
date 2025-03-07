{
  "0.1.0.0" = {
    sha256 = "490e0fddbfddf1e811a214267c5ca443b63a3e8c462bfeaa6f807284d4dae452";
    revisions = {
      r0 = {
        nix = import ../hackage/checked-exceptions-0.1.0.0-r0-059db817b820dcd19e23127f66c9b349ac8ee9c11b6df64a0f6de0fc5f357df7.nix;
        revNum = 0;
        sha256 = "059db817b820dcd19e23127f66c9b349ac8ee9c11b6df64a0f6de0fc5f357df7";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "b0e9163eec613d6efdf0a05c82a36b075dc1dfa7bfbf615df7c13ae000b5338f";
    revisions = {
      r0 = {
        nix = import ../hackage/checked-exceptions-0.1.0.1-r0-d750364a6d46a4c1dc63e9f9df21a9a89211f18955cc6611e60cca095578323a.nix;
        revNum = 0;
        sha256 = "d750364a6d46a4c1dc63e9f9df21a9a89211f18955cc6611e60cca095578323a";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "84484f36ff732181b617aea8ad061ea4f1b6ef28f8658b391e421ce2bc17fe1d";
    revisions = {
      r0 = {
        nix = import ../hackage/checked-exceptions-0.2.0.0-r0-6fe03965717d5f0c39b0ebf2842ddd7a999db97bf0e44fc454c44b5008534169.nix;
        revNum = 0;
        sha256 = "6fe03965717d5f0c39b0ebf2842ddd7a999db97bf0e44fc454c44b5008534169";
      };
      r1 = {
        nix = import ../hackage/checked-exceptions-0.2.0.0-r1-225beb8a105324152c6bd4fe2b2e1230cb86f1525c655ad31710d0a77f58f4b5.nix;
        revNum = 1;
        sha256 = "225beb8a105324152c6bd4fe2b2e1230cb86f1525c655ad31710d0a77f58f4b5";
      };
      default = "r1";
    };
  };
}