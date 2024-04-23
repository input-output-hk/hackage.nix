{
  "0.1" = {
    sha256 = "4bb22a0ad9d92c64673ec57edf9140a9eb5f358e26ae7f1ac397bd690676aeca";
    revisions = {
      r0 = {
        nix = import ../hackage/redis-simple-0.1-r0-b13323cafd680fb1b4acaa81f0fbc140730bc593ce07d4ddf499afa9ebc71778.nix;
        revNum = 0;
        sha256 = "b13323cafd680fb1b4acaa81f0fbc140730bc593ce07d4ddf499afa9ebc71778";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "83e4f6c22f70b40f7f36912b00eb8950c69f26f87482794aff0d102f182dfa4f";
    revisions = {
      r0 = {
        nix = import ../hackage/redis-simple-0.1.1-r0-3e8ddb0801eb3cf97f85120b9ef534f739f2a8502b789847c097b8c5f5a0ad61.nix;
        revNum = 0;
        sha256 = "3e8ddb0801eb3cf97f85120b9ef534f739f2a8502b789847c097b8c5f5a0ad61";
      };
      default = "r0";
    };
  };
}