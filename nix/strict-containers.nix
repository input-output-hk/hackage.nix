{
  "0.1" = {
    sha256 = "fadb82d338a2e9741161fa09ea3f1e1a1f9d95bd0617c40e4be705173eac6565";
    revisions = {
      r0 = {
        nix = import ../hackage/strict-containers-0.1-r0-d751696a8a74e368cf778cf98410b43fcd192d68febd4c691faaac1d6c3ab63f.nix;
        revNum = 0;
        sha256 = "d751696a8a74e368cf778cf98410b43fcd192d68febd4c691faaac1d6c3ab63f";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "27ce0cb72d3dd49c1513f84f4e6f08331f77e66b5bb021b6807954c14ee00a89";
    revisions = {
      r0 = {
        nix = import ../hackage/strict-containers-0.2-r0-e2c3871997a91c2805934ab6879e719d6dfba6755caa47606ed2076d2cca95a9.nix;
        revNum = 0;
        sha256 = "e2c3871997a91c2805934ab6879e719d6dfba6755caa47606ed2076d2cca95a9";
      };
      r1 = {
        nix = import ../hackage/strict-containers-0.2-r1-1bebfdb5ffb2aba15d6f34a8e0ddd7c26eeb99c92917bd5b20630fa671aeb446.nix;
        revNum = 1;
        sha256 = "1bebfdb5ffb2aba15d6f34a8e0ddd7c26eeb99c92917bd5b20630fa671aeb446";
      };
      r2 = {
        nix = import ../hackage/strict-containers-0.2-r2-f0166e6c2136b00c1878a6ff2ed39e34811c000bba4b69102b9aa2ae1f486bbe.nix;
        revNum = 2;
        sha256 = "f0166e6c2136b00c1878a6ff2ed39e34811c000bba4b69102b9aa2ae1f486bbe";
      };
      default = "r2";
    };
  };
}