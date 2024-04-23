{
  "0.1.0.0" = {
    sha256 = "7616a3b46034a23fc104117c3ce0aabb6a50e550349577b7f9e6c4ac1b9887dc";
    revisions = {
      r0 = {
        nix = import ../hackage/willow-0.1.0.0-r0-95ce3922f49562767d33717cc82909874b3402bd4e4d97bb3f23f7cb242a19c3.nix;
        revNum = 0;
        sha256 = "95ce3922f49562767d33717cc82909874b3402bd4e4d97bb3f23f7cb242a19c3";
      };
      r1 = {
        nix = import ../hackage/willow-0.1.0.0-r1-b4d9e62a63b819bcdd6349fe377c7670d7710217e0d785713a867873a75ecb53.nix;
        revNum = 1;
        sha256 = "b4d9e62a63b819bcdd6349fe377c7670d7710217e0d785713a867873a75ecb53";
      };
      default = "r1";
    };
  };
}