{
  "0.0.1" = {
    sha256 = "b645bff86157f46c8a1194c59bcaa6c182ded708c66a290d50041831f7dc3533";
    revisions = {
      r0 = {
        nix = import ../hackage/xxhash-0.0.1-r0-147a09b689eba9c3560e33b47bac984b659603fadd011c86511f7a718079558a.nix;
        revNum = 0;
        sha256 = "147a09b689eba9c3560e33b47bac984b659603fadd011c86511f7a718079558a";
        };
      r1 = {
        nix = import ../hackage/xxhash-0.0.1-r1-1d641797e9e431c6152dc41cbe72551bb2f91cec8265d3a5e3b2b9718764d274.nix;
        revNum = 1;
        sha256 = "1d641797e9e431c6152dc41cbe72551bb2f91cec8265d3a5e3b2b9718764d274";
        };
      default = "r1";
      };
    };
  "0.0.2" = {
    sha256 = "4f5cc71564d71b7ab1e9f70ce9b8d32a3d73cb0b1e08ff96bc54298b21eb2f27";
    revisions = {
      r0 = {
        nix = import ../hackage/xxhash-0.0.2-r0-ed6892fd5827a16bea1641619c586234b6aacd39d26b076a5bc6cf9dc6baacb9.nix;
        revNum = 0;
        sha256 = "ed6892fd5827a16bea1641619c586234b6aacd39d26b076a5bc6cf9dc6baacb9";
        };
      default = "r0";
      };
    };
  }