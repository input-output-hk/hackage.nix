{
  "0.0.0.1" = {
    sha256 = "d2cb7225e12a29d2c66065e39c46ccb82c6d205c47219281d39ef8956629f18f";
    revisions = {
      r0 = {
        nix = import ../hackage/hw-prelude-0.0.0.1-r0-f37d2b243068e187d3a6c20e58fba8c6eff1f5f31628c3aef96a83332686de92.nix;
        revNum = 0;
        sha256 = "f37d2b243068e187d3a6c20e58fba8c6eff1f5f31628c3aef96a83332686de92";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "b4f12eecc9f4e471a71f956d6580f3b876afcf713680a1d7e8a95e389df97096";
    revisions = {
      r0 = {
        nix = import ../hackage/hw-prelude-0.0.0.2-r0-add54f6fced3e3514a314ec2e996441c380994a5b519c3de9eecb92b52f1c189.nix;
        revNum = 0;
        sha256 = "add54f6fced3e3514a314ec2e996441c380994a5b519c3de9eecb92b52f1c189";
      };
      default = "r0";
    };
  };
}