{
  "1.0" = {
    sha256 = "dcd879d80b31f71b40cde58a44b1f936a9ec41cf569af3276ada2a02cd4e5009";
    revisions = {
      r0 = {
        nix = import ../hackage/moo-1.0-r0-f08d98f90d8d02d95cc1b973356c28242a48af9427187c4c0043266d79f98253.nix;
        revNum = 0;
        sha256 = "f08d98f90d8d02d95cc1b973356c28242a48af9427187c4c0043266d79f98253";
      };
      default = "r0";
    };
  };
  "1.2" = {
    sha256 = "d8d18d6601b1e6013c2cabfc4b651ccddd8cdf9dae5d10a50553725c067a6dc8";
    revisions = {
      r0 = {
        nix = import ../hackage/moo-1.2-r0-0c4be1a01548db785dcbbe6b8c98579dbf03c5b3b536e0420dce3ba6a61337cb.nix;
        revNum = 0;
        sha256 = "0c4be1a01548db785dcbbe6b8c98579dbf03c5b3b536e0420dce3ba6a61337cb";
      };
      default = "r0";
    };
  };
}