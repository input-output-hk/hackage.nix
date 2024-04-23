{
  "0.1.0.0" = {
    sha256 = "b0594fff749882aa7708596066f2cab0ceeab0cc0eea358eab743e2a6a831341";
    revisions = {
      r0 = {
        nix = import ../hackage/smash-optics-0.1.0.0-r0-d6b65effdb38edf99746e31f02f6234418c4d475fa97f6b94b7a1d7bbd090e68.nix;
        revNum = 0;
        sha256 = "d6b65effdb38edf99746e31f02f6234418c4d475fa97f6b94b7a1d7bbd090e68";
      };
      r1 = {
        nix = import ../hackage/smash-optics-0.1.0.0-r1-149f144409e373ebee68e56128a77f3ff907a4de424576cbcef3980096fdf3cf.nix;
        revNum = 1;
        sha256 = "149f144409e373ebee68e56128a77f3ff907a4de424576cbcef3980096fdf3cf";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "90b34b9af5407b4dcb9f10ea1ad9fdca427081e5db8574d593be5288fa06c6c9";
    revisions = {
      r0 = {
        nix = import ../hackage/smash-optics-0.1.0.1-r0-3f83e42bfaf9f393a78eb96f4aa7862e8047e6e942e47852bdfae2173fac7cc2.nix;
        revNum = 0;
        sha256 = "3f83e42bfaf9f393a78eb96f4aa7862e8047e6e942e47852bdfae2173fac7cc2";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "3ec7c83ba2239935bf377eef99c1a0e3050093003c79ae2a6a9cad3db99e9d29";
    revisions = {
      r0 = {
        nix = import ../hackage/smash-optics-0.1.0.2-r0-d8b32f75438279689e4c9e96429320da509d04d329844da6ed5f108f19111748.nix;
        revNum = 0;
        sha256 = "d8b32f75438279689e4c9e96429320da509d04d329844da6ed5f108f19111748";
      };
      default = "r0";
    };
  };
}