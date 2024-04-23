{
  "0.1.0" = {
    sha256 = "b9036dbdc0fdc550cdb51a2ad8c5cbbc49197a92d48fe43d1c4f53d36c6a5100";
    revisions = {
      r0 = {
        nix = import ../hackage/stack-wrapper-0.1.0-r0-51f1c7fc599f33823307fc169ba68ec908b98b54ef9cb52aa04da516d9ecd7d9.nix;
        revNum = 0;
        sha256 = "51f1c7fc599f33823307fc169ba68ec908b98b54ef9cb52aa04da516d9ecd7d9";
      };
      r1 = {
        nix = import ../hackage/stack-wrapper-0.1.0-r1-d142f70eb9b118c10e9c2bb80344dbff98a233951ac86e965e40badc05273f2e.nix;
        revNum = 1;
        sha256 = "d142f70eb9b118c10e9c2bb80344dbff98a233951ac86e965e40badc05273f2e";
      };
      default = "r1";
    };
  };
}