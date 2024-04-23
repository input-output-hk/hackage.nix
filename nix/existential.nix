{
  "0.1.0.0" = {
    sha256 = "1aea3b930ba0343fb9f3d8bef2d96dde79b9fb353ce80b6a93c9d99599c6b46a";
    revisions = {
      r0 = {
        nix = import ../hackage/existential-0.1.0.0-r0-a1fbf765443df3060f605028c5d434d90b649a5662b44b8fd748548970d47483.nix;
        revNum = 0;
        sha256 = "a1fbf765443df3060f605028c5d434d90b649a5662b44b8fd748548970d47483";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "756bf090bdf84aae4ffb8f3f7ceefe95eb772853d71edc369dd789d9fde6136e";
    revisions = {
      r0 = {
        nix = import ../hackage/existential-0.2.0.0-r0-f8d5a66cb783280bab40b43b57d5ecd8b82e8b33564af0f401255f217f09c7c8.nix;
        revNum = 0;
        sha256 = "f8d5a66cb783280bab40b43b57d5ecd8b82e8b33564af0f401255f217f09c7c8";
      };
      default = "r0";
    };
  };
}