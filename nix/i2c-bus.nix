{
  "0.1.0" = {
    sha256 = "5c91250c2b8a3e128883a2caa7ef0664b38085f1cea0b8f31bd87f39cc6c7361";
    revisions = {
      r0 = {
        nix = import ../hackage/i2c-bus-0.1.0-r0-6960cdc486a7f378c54058cb305d1bd2b43fcac7092399a7b4b544ab21292fb6.nix;
        revNum = 0;
        sha256 = "6960cdc486a7f378c54058cb305d1bd2b43fcac7092399a7b4b544ab21292fb6";
      };
      r1 = {
        nix = import ../hackage/i2c-bus-0.1.0-r1-a00be163092c02e1fc93782cd1b25177d325f9d36da269cd3daa13bbc7c81c17.nix;
        revNum = 1;
        sha256 = "a00be163092c02e1fc93782cd1b25177d325f9d36da269cd3daa13bbc7c81c17";
      };
      default = "r1";
    };
  };
}