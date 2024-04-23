{
  "0.0.0.0" = {
    sha256 = "6255efde33ec8a88c4b8489aa0bf1624d9ad2206561561b717e8d06262079b61";
    revisions = {
      r0 = {
        nix = import ../hackage/universal-0.0.0.0-r0-fcbde11741085ed80c55bdd6baf620d0eaa0b34f9608cfbdf0ecc55d428ecf94.nix;
        revNum = 0;
        sha256 = "fcbde11741085ed80c55bdd6baf620d0eaa0b34f9608cfbdf0ecc55d428ecf94";
      };
      default = "r0";
    };
  };
  "0.0.1.0" = {
    sha256 = "c9bf2e5bab33db0e6b96136f41446cf42f87955ecb8169d4e139844389fffcd2";
    revisions = {
      r0 = {
        nix = import ../hackage/universal-0.0.1.0-r0-f92d3269d566ecfe1db623a99e88583e213cc6aaf157e9e222975553d1c9ffe5.nix;
        revNum = 0;
        sha256 = "f92d3269d566ecfe1db623a99e88583e213cc6aaf157e9e222975553d1c9ffe5";
      };
      r1 = {
        nix = import ../hackage/universal-0.0.1.0-r1-2e448ae5fa7e633681ac1d9e3152bc448733a1077920a4ec70fb81c5d33e5b9e.nix;
        revNum = 1;
        sha256 = "2e448ae5fa7e633681ac1d9e3152bc448733a1077920a4ec70fb81c5d33e5b9e";
      };
      default = "r1";
    };
  };
}