{
  "0.11" = {
    sha256 = "11ae479a40d114f085abbd15c88da99746f8d8c6f55e7522e6f7088fa5a91a6b";
    revisions = {
      r0 = {
        nix = import ../hackage/hls-0.11-r0-8f2b071aa6e49036859df2b62927bc427a24dfcdd1dc41d29a8dc38435f809bb.nix;
        revNum = 0;
        sha256 = "8f2b071aa6e49036859df2b62927bc427a24dfcdd1dc41d29a8dc38435f809bb";
      };
      default = "r0";
    };
  };
  "0.14" = {
    sha256 = "28023d8489c1a70caf9820df02fcdb900e7b39a6c0afae425a00e3b21338623e";
    revisions = {
      r0 = {
        nix = import ../hackage/hls-0.14-r0-946bd42819c021dc5d6d7fcadca9fed3aa51db1811c08761767212fc752ee3f0.nix;
        revNum = 0;
        sha256 = "946bd42819c021dc5d6d7fcadca9fed3aa51db1811c08761767212fc752ee3f0";
      };
      default = "r0";
    };
  };
  "0.15" = {
    sha256 = "d4a423f6817c9a6a6bdf4afa5ac24279cfaeb0ddb25db71343bd4f6cb7776240";
    revisions = {
      r0 = {
        nix = import ../hackage/hls-0.15-r0-e8c52556f45124302c2665be205e14857094b2f077f930a31805e95a8aa758e2.nix;
        revNum = 0;
        sha256 = "e8c52556f45124302c2665be205e14857094b2f077f930a31805e95a8aa758e2";
      };
      default = "r0";
    };
  };
}