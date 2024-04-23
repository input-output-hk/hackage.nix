{
  "0.1.0.0" = {
    sha256 = "0119a9a96cd8f29529feb165d8bbe1a6ab12e7922696541d1a7f77c7350ac683";
    revisions = {
      r0 = {
        nix = import ../hackage/safe-decimal-0.1.0.0-r0-10545c701dd7f025a5675530a9fe44c61eff184de7eeaa33a5f4d7e5cb339560.nix;
        revNum = 0;
        sha256 = "10545c701dd7f025a5675530a9fe44c61eff184de7eeaa33a5f4d7e5cb339560";
      };
      r1 = {
        nix = import ../hackage/safe-decimal-0.1.0.0-r1-4367ad0954689f5bd1034f470374f50059b2345a73e5a5f34900aa5c846b8910.nix;
        revNum = 1;
        sha256 = "4367ad0954689f5bd1034f470374f50059b2345a73e5a5f34900aa5c846b8910";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "2b3a6eece6bbab7bb416f80d37dc1f707c66c4320da9f28492ef54b4a2292d0e";
    revisions = {
      r0 = {
        nix = import ../hackage/safe-decimal-0.2.0.0-r0-1b2a6f38abbd2bad4de46afd7ff2d466dfbff609b20c79bf93bf4e3729445ba2.nix;
        revNum = 0;
        sha256 = "1b2a6f38abbd2bad4de46afd7ff2d466dfbff609b20c79bf93bf4e3729445ba2";
      };
      default = "r0";
    };
  };
  "0.2.1.0" = {
    sha256 = "bcad549bae333a4f3522ed0b2469e273eb7bfc0295ad582bec7d42586446f4e0";
    revisions = {
      r0 = {
        nix = import ../hackage/safe-decimal-0.2.1.0-r0-cba4e9873698fa6ad6f59163f84d02063848ae05324e310679f108e7f0554c03.nix;
        revNum = 0;
        sha256 = "cba4e9873698fa6ad6f59163f84d02063848ae05324e310679f108e7f0554c03";
      };
      default = "r0";
    };
  };
}