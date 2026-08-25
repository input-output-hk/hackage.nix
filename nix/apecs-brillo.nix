{
  "0.1.0" = {
    sha256 = "23403e45279f02bab4b6ef92a740864a88625d7ad4ce029ffad6996b2a391228";
    revisions = {
      r0 = {
        nix = import ../hackage/apecs-brillo-0.1.0-r0-f90356651bcb305bc282b5ba8ca6ab22347bda019b706b67fbc729ccff875521.nix;
        revNum = 0;
        sha256 = "f90356651bcb305bc282b5ba8ca6ab22347bda019b706b67fbc729ccff875521";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "c64c01c8dee91042792fe8f66da21ca19738a0fbf4f544c971b2a83c4a8d73d1";
    revisions = {
      r0 = {
        nix = import ../hackage/apecs-brillo-0.1.1-r0-2b20617dd81026e3c3153f6bf44cd099e7d8e2d833b03ff5d8f3b8f779e736a2.nix;
        revNum = 0;
        sha256 = "2b20617dd81026e3c3153f6bf44cd099e7d8e2d833b03ff5d8f3b8f779e736a2";
      };
      r1 = {
        nix = import ../hackage/apecs-brillo-0.1.1-r1-4b2a952ee720572b9efb4d8cfb348a9714692c9bc060c5073ccb046cff5137b1.nix;
        revNum = 1;
        sha256 = "4b2a952ee720572b9efb4d8cfb348a9714692c9bc060c5073ccb046cff5137b1";
      };
      default = "r1";
    };
  };
  "0.1.1.1" = {
    sha256 = "70f2a48acc659f32fdf0070c574dc1016d4371265a9e54c346716653e21c4dbc";
    revisions = {
      r0 = {
        nix = import ../hackage/apecs-brillo-0.1.1.1-r0-44e1a06406fcfe7583b1c4b32e1799e6e8d92cd05d0e4e4c899efb420f842d06.nix;
        revNum = 0;
        sha256 = "44e1a06406fcfe7583b1c4b32e1799e6e8d92cd05d0e4e4c899efb420f842d06";
      };
      default = "r0";
    };
  };
}