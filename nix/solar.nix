{
  "0.1.0.0" = {
    sha256 = "13ee4986dd8808a70ca85cd6fb4c431c1d6136ad7ce18fe198d1f695d023cfb7";
    revisions = {
      r0 = {
        nix = import ../hackage/solar-0.1.0.0-r0-f7ceda8d2251a7d86f685d66eb22bc30d5cddf3458793d3b26b031b27b2a1816.nix;
        revNum = 0;
        sha256 = "f7ceda8d2251a7d86f685d66eb22bc30d5cddf3458793d3b26b031b27b2a1816";
      };
      r1 = {
        nix = import ../hackage/solar-0.1.0.0-r1-499ba03876cb045b5b8314285eedde11dd29d4bbf981c81bf908c69e99418764.nix;
        revNum = 1;
        sha256 = "499ba03876cb045b5b8314285eedde11dd29d4bbf981c81bf908c69e99418764";
      };
      default = "r1";
    };
  };
}