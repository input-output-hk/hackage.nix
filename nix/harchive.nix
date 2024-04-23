{
  "0.1" = {
    sha256 = "573e8da188e26626da20335a92560c8bccc628bd52f307f344f30b306c20b9f1";
    revisions = {
      r0 = {
        nix = import ../hackage/harchive-0.1-r0-0473561877ea9698f8bed7482ad70e19a610af56a290f6c7506001770f7be256.nix;
        revNum = 0;
        sha256 = "0473561877ea9698f8bed7482ad70e19a610af56a290f6c7506001770f7be256";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "35fd37eb05770a6d039ede545467bc132c780f29fa915006fe5a27db6c2c8880";
    revisions = {
      r0 = {
        nix = import ../hackage/harchive-0.2-r0-40e29ef789c8e1273c1971b28e78fdccf7954da1c8231ef0fa69d931ae626d61.nix;
        revNum = 0;
        sha256 = "40e29ef789c8e1273c1971b28e78fdccf7954da1c8231ef0fa69d931ae626d61";
      };
      default = "r0";
    };
  };
}