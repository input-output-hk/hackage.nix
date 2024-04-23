{
  "0.0.0.0" = {
    sha256 = "d9b98b13325ef27a953f74f09b5e32347f4d68ea96782651fcb3da41a68ff1a5";
    revisions = {
      r0 = {
        nix = import ../hackage/gooey-0.0.0.0-r0-aad2441c9a836a8a8a59bb231cd6d595d4ab9374b2ac4dab22129ffdb32813b4.nix;
        revNum = 0;
        sha256 = "aad2441c9a836a8a8a59bb231cd6d595d4ab9374b2ac4dab22129ffdb32813b4";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "f224cc55134f260e9b5edd908f4534a41a2c47a63388c9b34022d58fe95e545a";
    revisions = {
      r0 = {
        nix = import ../hackage/gooey-0.1.0.0-r0-cabd402d78718de15457d5d970f8fe1caaa2ad05a7f9bc0ca26b39e7fe8596c2.nix;
        revNum = 0;
        sha256 = "cabd402d78718de15457d5d970f8fe1caaa2ad05a7f9bc0ca26b39e7fe8596c2";
      };
      default = "r0";
    };
  };
}