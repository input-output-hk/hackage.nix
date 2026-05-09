{
  "0.1.0.0" = {
    sha256 = "8808ddbe1a63dff505e8b50cdeb59d09a684b6fdf44f797d0b675e4fee6cc9d4";
    revisions = {
      r0 = {
        nix = import ../hackage/hw-kafka-streamly-0.1.0.0-r0-71124fa4f5f46bc5a41217cafecfd2b226eb87c8a233d192a68de2a6daf5bb9f.nix;
        revNum = 0;
        sha256 = "71124fa4f5f46bc5a41217cafecfd2b226eb87c8a233d192a68de2a6daf5bb9f";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "03c331922c28a7b378031327e702b0384c9974811b533d0b49a861e3d223a3b1";
    revisions = {
      r0 = {
        nix = import ../hackage/hw-kafka-streamly-0.2.0.0-r0-6e0b1f1ad07bfd15988252a606fb871d0cc71957773631056309a884a0d7f73c.nix;
        revNum = 0;
        sha256 = "6e0b1f1ad07bfd15988252a606fb871d0cc71957773631056309a884a0d7f73c";
      };
      default = "r0";
    };
  };
}