{
  "0.1.0.0" = {
    sha256 = "a71b724a4232b9979b29fe55105520fc7a6e2a601d8d4822a85a228df60babdb";
    revisions = {
      r0 = {
        nix = import ../hackage/stm-queue-extras-0.1.0.0-r0-d81b75888eb52d5add0a2dff2983ca76ec8206d2dc248991a69a7f52c59c409f.nix;
        revNum = 0;
        sha256 = "d81b75888eb52d5add0a2dff2983ca76ec8206d2dc248991a69a7f52c59c409f";
      };
      r1 = {
        nix = import ../hackage/stm-queue-extras-0.1.0.0-r1-68bb5f0534de817d76805718b12295e82d976a687a490ca2a0d8c898bbda7a94.nix;
        revNum = 1;
        sha256 = "68bb5f0534de817d76805718b12295e82d976a687a490ca2a0d8c898bbda7a94";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "1a10d566365adfb79d4e1da3612520b28b050044838a73bb2f6f4e2ab2fea6e1";
    revisions = {
      r0 = {
        nix = import ../hackage/stm-queue-extras-0.2.0.0-r0-0c90122c2c5998a0b60d00506effde335dbd71ad60bc1b798759a05d4fb3193b.nix;
        revNum = 0;
        sha256 = "0c90122c2c5998a0b60d00506effde335dbd71ad60bc1b798759a05d4fb3193b";
      };
      default = "r0";
    };
  };
  "0.2.0.0.1" = {
    sha256 = "00047cb4167a56c6bd809572a33d818714bc74c3bad46cd686fa86f01a8a66fd";
    revisions = {
      r0 = {
        nix = import ../hackage/stm-queue-extras-0.2.0.0.1-r0-fdb4332e8503507b77ef0825c7d831a0dee988456f64cd5c3c7fd3976e950c88.nix;
        revNum = 0;
        sha256 = "fdb4332e8503507b77ef0825c7d831a0dee988456f64cd5c3c7fd3976e950c88";
      };
      default = "r0";
    };
  };
}