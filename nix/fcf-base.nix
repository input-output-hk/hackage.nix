{
  "0.1.0.0" = {
    sha256 = "58f37fafe6e56f0f159505d63f71907af0b24adb6070873664779944e46559a6";
    revisions = {
      r0 = {
        nix = import ../hackage/fcf-base-0.1.0.0-r0-7ae1f63db26f929ad52386697dca0dd3903c18b84dc561362c7fc666128081f7.nix;
        revNum = 0;
        sha256 = "7ae1f63db26f929ad52386697dca0dd3903c18b84dc561362c7fc666128081f7";
      };
      r1 = {
        nix = import ../hackage/fcf-base-0.1.0.0-r1-77459526b5d7b92d47077ce471932fe9c890946a461cd47d53d25c66fcbbe148.nix;
        revNum = 1;
        sha256 = "77459526b5d7b92d47077ce471932fe9c890946a461cd47d53d25c66fcbbe148";
      };
      default = "r1";
    };
  };
}