{
  "0.1.0" = {
    sha256 = "071cc4be1ca9c697f2ccc63bc2b0525f9590af9f3cb4c3db8fede04a722ea4c1";
    revisions = {
      r0 = {
        nix = import ../hackage/bitcoin-scripting-0.1.0-r0-d41d00754e70d32d26997a4fcbdcf6c8e0a470d2c13f358969b90a6d3f7da90c.nix;
        revNum = 0;
        sha256 = "d41d00754e70d32d26997a4fcbdcf6c8e0a470d2c13f358969b90a6d3f7da90c";
        };
      r1 = {
        nix = import ../hackage/bitcoin-scripting-0.1.0-r1-745dcbc96a6857f85a8d0ba69181325cfa7b91d2b0a7d7fc56e3bd8833405100.nix;
        revNum = 1;
        sha256 = "745dcbc96a6857f85a8d0ba69181325cfa7b91d2b0a7d7fc56e3bd8833405100";
        };
      default = "r1";
      };
    };
  "0.2.0" = {
    sha256 = "2bbcddc077656399c608fb979bec23ec83197020827e8c91fdd5bfe8ec1eb402";
    revisions = {
      r0 = {
        nix = import ../hackage/bitcoin-scripting-0.2.0-r0-8ee26f223d6446867884c401dae1cd9cf0034652a4ffa74d0ad727e7b2de0eb4.nix;
        revNum = 0;
        sha256 = "8ee26f223d6446867884c401dae1cd9cf0034652a4ffa74d0ad727e7b2de0eb4";
        };
      default = "r0";
      };
    };
  "0.3.0" = {
    sha256 = "5aada8a143640cb69482cb8d55b0545b58063ff99fb70d500c9ed28fd090d7c7";
    revisions = {
      r0 = {
        nix = import ../hackage/bitcoin-scripting-0.3.0-r0-cca05553fe6a7d60252143ec751de828686b21205102027b685a96869984aed0.nix;
        revNum = 0;
        sha256 = "cca05553fe6a7d60252143ec751de828686b21205102027b685a96869984aed0";
        };
      default = "r0";
      };
    };
  }