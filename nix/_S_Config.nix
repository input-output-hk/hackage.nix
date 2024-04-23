{
  "0.1.0.0" = {
    sha256 = "65234e6accb4ba722fc530467c01c76e5e229dd99c6ce37db8bf349faef339ae";
    revisions = {
      r0 = {
        nix = import ../hackage/SConfig-0.1.0.0-r0-a656a04e5901c80de53098c494dd9dcdb7ccaa71a3f6e7f446de08abd90c7c90.nix;
        revNum = 0;
        sha256 = "a656a04e5901c80de53098c494dd9dcdb7ccaa71a3f6e7f446de08abd90c7c90";
      };
      r1 = {
        nix = import ../hackage/SConfig-0.1.0.0-r1-d46453cdb682d94f8584c32f5162c993f4de3516b4fc6b5d317848cb2ca818da.nix;
        revNum = 1;
        sha256 = "d46453cdb682d94f8584c32f5162c993f4de3516b4fc6b5d317848cb2ca818da";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "df83eddc9ac14bbc5240901a42c7fe91b60bb390da1967db561f154abf365a0c";
    revisions = {
      r0 = {
        nix = import ../hackage/SConfig-0.2.0.0-r0-1505b270fa54a75835430111a148007d5b11e66e8c6d3fcebed9620426d8a214.nix;
        revNum = 0;
        sha256 = "1505b270fa54a75835430111a148007d5b11e66e8c6d3fcebed9620426d8a214";
      };
      default = "r0";
    };
  };
}