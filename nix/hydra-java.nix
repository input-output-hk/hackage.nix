{
  "0.17.0" = {
    sha256 = "668ab417af553c7fb7f81ad74ef09ade6d624f7500a07daeb4601aa7ad05d2d6";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-java-0.17.0-r0-519fca1fae1f26da928eeceda2c49f9693afd237e73b34a5121a9b16d213aad7.nix;
        revNum = 0;
        sha256 = "519fca1fae1f26da928eeceda2c49f9693afd237e73b34a5121a9b16d213aad7";
      };
      default = "r0";
    };
  };
  "0.17.1" = {
    sha256 = "946fbb13c150eea14b5d54e6f04e0c1ec24256dde691e5fd39dabc93e70eb97f";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-java-0.17.1-r0-bc04003407856fafdee84681dd737c13fa49731e89f36704e5992a55ecbb8765.nix;
        revNum = 0;
        sha256 = "bc04003407856fafdee84681dd737c13fa49731e89f36704e5992a55ecbb8765";
      };
      default = "r0";
    };
  };
}