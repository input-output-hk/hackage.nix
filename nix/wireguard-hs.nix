{
  "0.1.0" = {
    sha256 = "208e0d010f0daa1699a4a01b8db0ff7b85a85143177252c4612492f3abdc015a";
    revisions = {
      r0 = {
        nix = import ../hackage/wireguard-hs-0.1.0-r0-105fdd40bd70229400b7a0f5c0d590fc2eaa4c9dfb5be0128450da994e062bd3.nix;
        revNum = 0;
        sha256 = "105fdd40bd70229400b7a0f5c0d590fc2eaa4c9dfb5be0128450da994e062bd3";
      };
      r1 = {
        nix = import ../hackage/wireguard-hs-0.1.0-r1-762c0a33cd5133f70e298986072911e1f7f933a67b96467a9a0136c6fd54c76d.nix;
        revNum = 1;
        sha256 = "762c0a33cd5133f70e298986072911e1f7f933a67b96467a9a0136c6fd54c76d";
      };
      default = "r1";
    };
  };
}