{
  "1.2.2.1" = {
    sha256 = "e8367e59d54a3650dfd97e93e7f20c9fdcd0bdfbc6260b29831fa9a3c5641975";
    revisions = {
      r0 = {
        nix = import ../hackage/moonshine-1.2.2.1-r0-d3e5e5351041267eab6e53ce7b9b94ad1c153c00722ded620fb768bd6aa29931.nix;
        revNum = 0;
        sha256 = "d3e5e5351041267eab6e53ce7b9b94ad1c153c00722ded620fb768bd6aa29931";
      };
      default = "r0";
    };
  };
  "2.0.0.0" = {
    sha256 = "1a1bed5a06a3eb16393e94f40dfb32c34695033ee5695f709adf9669133c0bad";
    revisions = {
      r0 = {
        nix = import ../hackage/moonshine-2.0.0.0-r0-876b4963ae37c19a7ba041dfa63fb7b59e17aa50898eba2c129be3d9978f4253.nix;
        revNum = 0;
        sha256 = "876b4963ae37c19a7ba041dfa63fb7b59e17aa50898eba2c129be3d9978f4253";
      };
      default = "r0";
    };
  };
}