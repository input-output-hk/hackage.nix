{
  "0.1.0.0" = {
    sha256 = "d808637fe2ba92bc38488ab038f2c010b01630430a19677468a308da2c19081d";
    revisions = {
      r0 = {
        nix = import ../hackage/bitcoind-regtest-0.1.0.0-r0-d327de5c9dd02a45bb7251f6d05a134c9624b7d86fb71707bf6dc902f3c64e0f.nix;
        revNum = 0;
        sha256 = "d327de5c9dd02a45bb7251f6d05a134c9624b7d86fb71707bf6dc902f3c64e0f";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "8ea1414b05219cb9106b452ce87b320d2f1ae46117c37ca650c7c93dd644531b";
    revisions = {
      r0 = {
        nix = import ../hackage/bitcoind-regtest-0.2.0.0-r0-d913b9a61dbf7a1d4092e8c7d3b4603f6b059ae5fd2632321aeec1d8b4937b5a.nix;
        revNum = 0;
        sha256 = "d913b9a61dbf7a1d4092e8c7d3b4603f6b059ae5fd2632321aeec1d8b4937b5a";
      };
      r1 = {
        nix = import ../hackage/bitcoind-regtest-0.2.0.0-r1-104fd41661cc28d7580ab2e9770679e8e94b31f7b558a1f9fe6bc6d1f3c61897.nix;
        revNum = 1;
        sha256 = "104fd41661cc28d7580ab2e9770679e8e94b31f7b558a1f9fe6bc6d1f3c61897";
      };
      default = "r1";
    };
  };
}