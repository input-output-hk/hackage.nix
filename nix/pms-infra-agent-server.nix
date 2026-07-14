{
  "0.0.1.0" = {
    sha256 = "79f5ecf22371f04dc93fef5349c7c06a00ae8a04d7fc0f7c670c768e06f6b58c";
    revisions = {
      r0 = {
        nix = import ../hackage/pms-infra-agent-server-0.0.1.0-r0-ffd42cb61d5506b6491c002c9b8b61c8cc8cd7ad2f6fd22643a952e438c457ba.nix;
        revNum = 0;
        sha256 = "ffd42cb61d5506b6491c002c9b8b61c8cc8cd7ad2f6fd22643a952e438c457ba";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "7769236ac052055d6d9621add77ad5eac18cf02267a037078e0865d113db418d";
    revisions = {
      r0 = {
        nix = import ../hackage/pms-infra-agent-server-0.0.2.0-r0-230c7e822c83fd3766027d0b705f0a73605b9c9e71133d6aaaa6a567a0160eb4.nix;
        revNum = 0;
        sha256 = "230c7e822c83fd3766027d0b705f0a73605b9c9e71133d6aaaa6a567a0160eb4";
      };
      default = "r0";
    };
  };
}