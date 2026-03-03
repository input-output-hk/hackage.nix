{
  "0.1.0.0" = {
    sha256 = "1491acc8e2ac86746ec7ef9737036d1846093b7d372508fa031f20456128d298";
    revisions = {
      r0 = {
        nix = import ../hackage/ipedb-0.1.0.0-r0-f093fdb80cf1930063055eee8cb8922483b580beb1e7a42d6b376780bcc603f3.nix;
        revNum = 0;
        sha256 = "f093fdb80cf1930063055eee8cb8922483b580beb1e7a42d6b376780bcc603f3";
      };
      r1 = {
        nix = import ../hackage/ipedb-0.1.0.0-r1-300ce85cf23328f581f87b249160a8b62dd61c2acebfdda16f74161170391e2f.nix;
        revNum = 1;
        sha256 = "300ce85cf23328f581f87b249160a8b62dd61c2acebfdda16f74161170391e2f";
      };
      default = "r1";
    };
  };
}