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
  "0.2.0.0" = {
    sha256 = "7b6ed51cb44bb0691f597f598b15233111dc7979b218b7c2dcc91abee44291c5";
    revisions = {
      r0 = {
        nix = import ../hackage/ipedb-0.2.0.0-r0-5a00908f676dded12831d8a84d9fb7acddad7c7d37480bb117b3b581c58487ec.nix;
        revNum = 0;
        sha256 = "5a00908f676dded12831d8a84d9fb7acddad7c7d37480bb117b3b581c58487ec";
      };
      default = "r0";
    };
  };
  "0.2.0.1" = {
    sha256 = "55c9b27e95cca2274705556c5d10b95726d46735b8eff3315fb65f0a0f1f79b7";
    revisions = {
      r0 = {
        nix = import ../hackage/ipedb-0.2.0.1-r0-21e7842f2b47d531417aed7a5bad3925b4a219505e3bb82cd4cc97cf02a9d523.nix;
        revNum = 0;
        sha256 = "21e7842f2b47d531417aed7a5bad3925b4a219505e3bb82cd4cc97cf02a9d523";
      };
      default = "r0";
    };
  };
}