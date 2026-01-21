{
  "0.1.0.0" = {
    sha256 = "e2dcf9793edc3442889e5aec5f43ebaad268853be084851158dc8a60a59e9116";
    revisions = {
      r0 = {
        nix = import ../hackage/antigen-0.1.0.0-r0-aa0c0f87981158ec530a7df870ab2fd8833f3aaa8faeb0502653bf8b4444238c.nix;
        revNum = 0;
        sha256 = "aa0c0f87981158ec530a7df870ab2fd8833f3aaa8faeb0502653bf8b4444238c";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "ab03b59e305e20996b13c1d9ee7fd5f9a13b92423557a92686b874cd34561ea6";
    revisions = {
      r0 = {
        nix = import ../hackage/antigen-0.1.1.0-r0-203d87c194cfe16ebf77f585aaa4280b7d901c3db6e36d309609c4a4b3291e19.nix;
        revNum = 0;
        sha256 = "203d87c194cfe16ebf77f585aaa4280b7d901c3db6e36d309609c4a4b3291e19";
      };
      r1 = {
        nix = import ../hackage/antigen-0.1.1.0-r1-47114773db04e174100fef0dc931af1143af78feb995a10861c5999a2f5efe0e.nix;
        revNum = 1;
        sha256 = "47114773db04e174100fef0dc931af1143af78feb995a10861c5999a2f5efe0e";
      };
      r2 = {
        nix = import ../hackage/antigen-0.1.1.0-r2-ba906a964aba577f1b84bc89fb11b8de033d143079886888f787db276770bbbf.nix;
        revNum = 2;
        sha256 = "ba906a964aba577f1b84bc89fb11b8de033d143079886888f787db276770bbbf";
      };
      default = "r2";
    };
  };
}