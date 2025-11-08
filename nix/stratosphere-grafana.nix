{
  "1.0.0" = {
    sha256 = "30ba765bbf7acfda688edd1f4de91dac03f19a3e336c50c9624de08f7d7943db";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-grafana-1.0.0-r0-1e7d6769d0d25a14392c88628304f662adad0af3957b96b75954e8f5592e05ee.nix;
        revNum = 0;
        sha256 = "1e7d6769d0d25a14392c88628304f662adad0af3957b96b75954e8f5592e05ee";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "1c082c86fe85b700f75b82443cd3e5176f04a1d68cbce0377faed9435379c066";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-grafana-1.0.1-r0-f2bd66fbf645c8398dadcc88ffb57e448fd13ca62e6bf1f260db5471762dac68.nix;
        revNum = 0;
        sha256 = "f2bd66fbf645c8398dadcc88ffb57e448fd13ca62e6bf1f260db5471762dac68";
      };
      default = "r0";
    };
  };
}