{
  "0.1.0.0" = {
    sha256 = "481cb13bacb3a0e5a9eee75bd78b793b30b048140d3d7a19eabc9ef6b33cc774";
    revisions = {
      r0 = {
        nix = import ../hackage/plist-buddy-0.1.0.0-r0-6778d05414ae24696b8eb9ad4c2d9edf352198b7ffacba9abbd1b6b804335bb5.nix;
        revNum = 0;
        sha256 = "6778d05414ae24696b8eb9ad4c2d9edf352198b7ffacba9abbd1b6b804335bb5";
      };
      r1 = {
        nix = import ../hackage/plist-buddy-0.1.0.0-r1-f6e9c3e20bbdd9807c577cd75527e74a34f1790370d17a55f8d53f3523c1959c.nix;
        revNum = 1;
        sha256 = "f6e9c3e20bbdd9807c577cd75527e74a34f1790370d17a55f8d53f3523c1959c";
      };
      r2 = {
        nix = import ../hackage/plist-buddy-0.1.0.0-r2-91011692ad8ca1dd4ef73d3960807be1e9f6f422f0befb850bd575603c1ceee0.nix;
        revNum = 2;
        sha256 = "91011692ad8ca1dd4ef73d3960807be1e9f6f422f0befb850bd575603c1ceee0";
      };
      default = "r2";
    };
  };
}