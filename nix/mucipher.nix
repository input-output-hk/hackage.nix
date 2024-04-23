{
  "0.5.0" = {
    sha256 = "4672a8d18f2cc5908e2e4067171eba703538839920d9ad01e6f8422b9e31fc79";
    revisions = {
      r0 = {
        nix = import ../hackage/mucipher-0.5.0-r0-f3b2e12b0ab97af211bb6c713bab906dbbe796187ec99ddc2f7ff8a1a19113fd.nix;
        revNum = 0;
        sha256 = "f3b2e12b0ab97af211bb6c713bab906dbbe796187ec99ddc2f7ff8a1a19113fd";
      };
      default = "r0";
    };
  };
  "0.6.0" = {
    sha256 = "1e3c0ec3f33cf662c57c06503422637af625d39cbb57f29f843c45bb48ccad2e";
    revisions = {
      r0 = {
        nix = import ../hackage/mucipher-0.6.0-r0-9b1d8b0310af8d2179745d2268cc7b2cebeae3c06837581e4e76dbce3e47a67c.nix;
        revNum = 0;
        sha256 = "9b1d8b0310af8d2179745d2268cc7b2cebeae3c06837581e4e76dbce3e47a67c";
      };
      default = "r0";
    };
  };
}