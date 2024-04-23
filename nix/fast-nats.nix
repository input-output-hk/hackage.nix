{
  "0.1.0.0" = {
    sha256 = "816b51f754f789026b3c4833d3139433220921152b15c7545fda97d58d1bac28";
    revisions = {
      r0 = {
        nix = import ../hackage/fast-nats-0.1.0.0-r0-039705bbe72fcb4c610f721047a15411c45ae5d6f654c7fb29f66620ab62d3cd.nix;
        revNum = 0;
        sha256 = "039705bbe72fcb4c610f721047a15411c45ae5d6f654c7fb29f66620ab62d3cd";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "8197f83252621182c32350c20f995fb3ad3549499e2fbf2687235ff80024e3ce";
    revisions = {
      r0 = {
        nix = import ../hackage/fast-nats-0.1.0.1-r0-f8ed4cf06c7429bba4a03e4b357bb880ff24552d6b422cb860b3b9fd3880448b.nix;
        revNum = 0;
        sha256 = "f8ed4cf06c7429bba4a03e4b357bb880ff24552d6b422cb860b3b9fd3880448b";
      };
      default = "r0";
    };
  };
}