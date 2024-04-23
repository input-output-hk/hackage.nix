{
  "0.9" = {
    sha256 = "c7af7516a2afd6db4112626b09e018b037b3ef012db2c92cbc3439895da5cb93";
    revisions = {
      r0 = {
        nix = import ../hackage/yhccore-0.9-r0-0e54e2328cd79dc3fb3aa209cbe6572def2ea4e2ae61b1f096e768dea126cdc6.nix;
        revNum = 0;
        sha256 = "0e54e2328cd79dc3fb3aa209cbe6572def2ea4e2ae61b1f096e768dea126cdc6";
      };
      default = "r0";
    };
  };
  "0.9.1" = {
    sha256 = "23715d06a973b5967ac9681d0d2f8e65d0bbda0ff8c9e587381702db2ffdf2a1";
    revisions = {
      r0 = {
        nix = import ../hackage/yhccore-0.9.1-r0-110a6c0900ee680e38c57b31e704704945b41ddf4fd2de097c4b18d8aab69ef2.nix;
        revNum = 0;
        sha256 = "110a6c0900ee680e38c57b31e704704945b41ddf4fd2de097c4b18d8aab69ef2";
      };
      default = "r0";
    };
  };
}