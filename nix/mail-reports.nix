{
  "0.1.0.0" = {
    sha256 = "b21b5d44e70332606f868ae39de54ab915632a1605c7f03d3fcf220b843c5592";
    revisions = {
      r0 = {
        nix = import ../hackage/mail-reports-0.1.0.0-r0-f227f281389438ba884571168fd5250cd42e1e16771f475aa8fedde42a97a5a3.nix;
        revNum = 0;
        sha256 = "f227f281389438ba884571168fd5250cd42e1e16771f475aa8fedde42a97a5a3";
        };
      r1 = {
        nix = import ../hackage/mail-reports-0.1.0.0-r1-a445bb7ba432d60d121d7b5905014d5e831f091253217bd2dec4f634752a43e1.nix;
        revNum = 1;
        sha256 = "a445bb7ba432d60d121d7b5905014d5e831f091253217bd2dec4f634752a43e1";
        };
      default = "r1";
      };
    };
  "0.2.0.0" = {
    sha256 = "3fbd695f8a5a44f9a984d2ae953fb6c90a4bd0b1a0ef14d38f5543cfee5772bc";
    revisions = {
      r0 = {
        nix = import ../hackage/mail-reports-0.2.0.0-r0-b65d58444dd6c88cda5b4fb2565d87792130c649b23a04509688f1552762c751.nix;
        revNum = 0;
        sha256 = "b65d58444dd6c88cda5b4fb2565d87792130c649b23a04509688f1552762c751";
        };
      default = "r0";
      };
    };
  "0.3.0.0" = {
    sha256 = "aa77833854638241ab3556cd05a0748bef25c93124ea2f769018c6d182c0c382";
    revisions = {
      r0 = {
        nix = import ../hackage/mail-reports-0.3.0.0-r0-c2164465ae0567a7496b31e33d7f18e5f19c5aac97d17d4880a8cbb285ba7328.nix;
        revNum = 0;
        sha256 = "c2164465ae0567a7496b31e33d7f18e5f19c5aac97d17d4880a8cbb285ba7328";
        };
      default = "r0";
      };
    };
  }