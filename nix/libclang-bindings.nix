{
  "0.1.0.0" = {
    sha256 = "3c4b9c61c78c99b4cf1362cdf18247f933f6493ce23ace23ffec8132ee998db6";
    revisions = {
      r0 = {
        nix = import ../hackage/libclang-bindings-0.1.0.0-r0-885c593a95088a3f71f228193ceace64e04d0453436ad327015d513565bf3f76.nix;
        revNum = 0;
        sha256 = "885c593a95088a3f71f228193ceace64e04d0453436ad327015d513565bf3f76";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "d93a2c16fc545f09af43b26ae6ac26294462b81b8808d749fa4d4288c0648521";
    revisions = {
      r0 = {
        nix = import ../hackage/libclang-bindings-0.2.0.0-r0-6af6e69c9d42bb0018ee568bcb484fa6d276a1d7d5e78960039ddc150b2393d8.nix;
        revNum = 0;
        sha256 = "6af6e69c9d42bb0018ee568bcb484fa6d276a1d7d5e78960039ddc150b2393d8";
      };
      default = "r0";
    };
  };
}