{
  "0.0.1" = {
    sha256 = "1a72f9332e8dfd57d3832bb0ea00b892a396d4fa8b7d84b551db35565c3d16f3";
    revisions = {
      r0 = {
        nix = import ../hackage/git-phoenix-0.0.1-r0-aaaeaa397dabc67891d63e57726667deef9cdbd48a0df46ad95f8722feed8778.nix;
        revNum = 0;
        sha256 = "aaaeaa397dabc67891d63e57726667deef9cdbd48a0df46ad95f8722feed8778";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "4ff0d07342d4928eed13f60a46c811c94d8f9881222df843b62ca9c0ad51775a";
    revisions = {
      r0 = {
        nix = import ../hackage/git-phoenix-0.0.2-r0-0825d959fdb65d7801c5dc5261e8aa27779ee06e75ce4a31d3cef3777f55262a.nix;
        revNum = 0;
        sha256 = "0825d959fdb65d7801c5dc5261e8aa27779ee06e75ce4a31d3cef3777f55262a";
      };
      default = "r0";
    };
  };
}