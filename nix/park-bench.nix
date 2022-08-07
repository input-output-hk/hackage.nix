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
      default = "r0";
      };
    };
  }