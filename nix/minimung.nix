{
  "0.0" = {
    sha256 = "ca12999b06d2126d7dda73463bf8b486125700c1d13fc8474dae81bed3fdb83a";
    revisions = {
      r0 = {
        nix = import ../hackage/minimung-0.0-r0-abc3c76725c986a3c699d92ce53a18eada322b81fd1c4c97e6830a9f012608fe.nix;
        revNum = 0;
        sha256 = "abc3c76725c986a3c699d92ce53a18eada322b81fd1c4c97e6830a9f012608fe";
      };
      default = "r0";
    };
  };
  "0.1" = {
    sha256 = "8ee2194658f1400c27c66806144d90b23f2a9348ec4d2a84744d8572da2a0245";
    revisions = {
      r0 = {
        nix = import ../hackage/minimung-0.1-r0-3fabbf90a604e8c9ce635d938e4c6d5157f8065183b90df93061572d8498af48.nix;
        revNum = 0;
        sha256 = "3fabbf90a604e8c9ce635d938e4c6d5157f8065183b90df93061572d8498af48";
      };
      default = "r0";
    };
  };
}