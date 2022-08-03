{
  "0" = {
    sha256 = "2850a88d494d2dd543b89dfbc23be7d2d78dfef49620adc13a0d3b1030623de3";
    revisions = {
      r0 = {
        nix = import ../hackage/filesystem-abstractions-0-r0-1f34df8dd4e65fc791e90a51123828f2757c6024dc67b0bb9c2fbeda97bb6007.nix;
        revNum = 0;
        sha256 = "1f34df8dd4e65fc791e90a51123828f2757c6024dc67b0bb9c2fbeda97bb6007";
        };
      r1 = {
        nix = import ../hackage/filesystem-abstractions-0-r1-c704b985a4839c03c1dcee754ea38d1bd87c5aa1d53ff1dba7ecc9e25d8cd361.nix;
        revNum = 1;
        sha256 = "c704b985a4839c03c1dcee754ea38d1bd87c5aa1d53ff1dba7ecc9e25d8cd361";
        };
      r2 = {
        nix = import ../hackage/filesystem-abstractions-0-r2-80be31ac70ed9694124767bb9359026a1fbe19015f88135f93e068e6f58d49d6.nix;
        revNum = 2;
        sha256 = "80be31ac70ed9694124767bb9359026a1fbe19015f88135f93e068e6f58d49d6";
        };
      default = "r2";
      };
    };
  }