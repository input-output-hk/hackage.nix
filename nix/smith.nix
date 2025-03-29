{
  "0.1.0.0" = {
    sha256 = "b46e1327ae730d3fd383e12b8fe85962c30bcbd2b2266c8125287644ddd9008e";
    revisions = {
      r0 = {
        nix = import ../hackage/smith-0.1.0.0-r0-85eb42c549c9f0f027971797de1948b04530e84482d9fef1989d4391e22b0a9a.nix;
        revNum = 0;
        sha256 = "85eb42c549c9f0f027971797de1948b04530e84482d9fef1989d4391e22b0a9a";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "af941f3950755b59a2b79a4c7589d7ca6694a7735493a349b9dd1d4681fe907a";
    revisions = {
      r0 = {
        nix = import ../hackage/smith-0.1.1.0-r0-42f5f8c80ea63b1df8614209542ca5a3fe54079f2c995182ae3550a6e4cc7d94.nix;
        revNum = 0;
        sha256 = "42f5f8c80ea63b1df8614209542ca5a3fe54079f2c995182ae3550a6e4cc7d94";
      };
      r1 = {
        nix = import ../hackage/smith-0.1.1.0-r1-3c20ba65a592f39867a6b1bf1356ba17dcf1ac79f304eb6d533b41f3d5708802.nix;
        revNum = 1;
        sha256 = "3c20ba65a592f39867a6b1bf1356ba17dcf1ac79f304eb6d533b41f3d5708802";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "1d6d814778c135ae78e540acbf0f122baef025b9811d341dd01eb902aee3357a";
    revisions = {
      r0 = {
        nix = import ../hackage/smith-0.2.0.0-r0-89fe8d383024b1e43089f9ff27e9e6fcc37f82e82418bd2e1d931339c1eab289.nix;
        revNum = 0;
        sha256 = "89fe8d383024b1e43089f9ff27e9e6fcc37f82e82418bd2e1d931339c1eab289";
      };
      default = "r0";
    };
  };
}