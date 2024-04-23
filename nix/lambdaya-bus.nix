{
  "0.0.0.1" = {
    sha256 = "0ca1dad021e775aaa9e53ec77c468274d925fb960adce041025b49e8c934d717";
    revisions = {
      r0 = {
        nix = import ../hackage/lambdaya-bus-0.0.0.1-r0-d7b1cbc6e565b0cc142cb114849cf8c0782136b698ddc6322f27ba658c3a25bb.nix;
        revNum = 0;
        sha256 = "d7b1cbc6e565b0cc142cb114849cf8c0782136b698ddc6322f27ba658c3a25bb";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "350df664157d067a7166cf620b24222ccfa09f761bb7e430705e19f58249a0f5";
    revisions = {
      r0 = {
        nix = import ../hackage/lambdaya-bus-0.0.0.2-r0-1e28c468104068542f6c38d11f9ce5098edbb2dab37360f90179ae0a6c42fafc.nix;
        revNum = 0;
        sha256 = "1e28c468104068542f6c38d11f9ce5098edbb2dab37360f90179ae0a6c42fafc";
      };
      default = "r0";
    };
  };
}