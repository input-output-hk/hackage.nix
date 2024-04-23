{
  "0.1.0" = {
    sha256 = "9e6c633444ecae406e972fb793eb788cf1e8b2e2d79b222ebfa368a04727f279";
    revisions = {
      r0 = {
        nix = import ../hackage/park-bench-0.1.0-r0-6263e6f513ee85b6301782f0dc938080eaecd265eeb89d0f798fd3bfb2b05857.nix;
        revNum = 0;
        sha256 = "6263e6f513ee85b6301782f0dc938080eaecd265eeb89d0f798fd3bfb2b05857";
      };
      r1 = {
        nix = import ../hackage/park-bench-0.1.0-r1-ea9d9f49756cc283b10efc11168a77e4af1f67fc6a91c8ca5f32d64554fb0c1f.nix;
        revNum = 1;
        sha256 = "ea9d9f49756cc283b10efc11168a77e4af1f67fc6a91c8ca5f32d64554fb0c1f";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "65dc6cbe9b7862654bc50080408d67cef03e843438f97bc86a1d798287dc2c66";
    revisions = {
      r0 = {
        nix = import ../hackage/park-bench-0.1.0.1-r0-9155ccf48f9b06324cc4d11ec6c72103efe44ae281efba934e7e116e73124918.nix;
        revNum = 0;
        sha256 = "9155ccf48f9b06324cc4d11ec6c72103efe44ae281efba934e7e116e73124918";
      };
      r1 = {
        nix = import ../hackage/park-bench-0.1.0.1-r1-de51be4e686053a3b36bde34338a4a830a63f6758363f20aea9ec10420421592.nix;
        revNum = 1;
        sha256 = "de51be4e686053a3b36bde34338a4a830a63f6758363f20aea9ec10420421592";
      };
      r2 = {
        nix = import ../hackage/park-bench-0.1.0.1-r2-7f2580cae80d09fb924e8a06ee119cbef712f94c0f66d075a39e118704fd8c96.nix;
        revNum = 2;
        sha256 = "7f2580cae80d09fb924e8a06ee119cbef712f94c0f66d075a39e118704fd8c96";
      };
      default = "r2";
    };
  };
  "0.1.1.0" = {
    sha256 = "499a4b3eb35effc969ab5070ecc6e7557bb6e676f1d38e251c5562ab25856b97";
    revisions = {
      r0 = {
        nix = import ../hackage/park-bench-0.1.1.0-r0-1f27366ca0855c68fa9252ac52b514d3dccd2d783fc9fb50092ff15aa9c202d5.nix;
        revNum = 0;
        sha256 = "1f27366ca0855c68fa9252ac52b514d3dccd2d783fc9fb50092ff15aa9c202d5";
      };
      default = "r0";
    };
  };
}