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
      r2 = {
        nix = import ../hackage/xxhash-0.0.1-r2-7bd50c6ca0f587b3a70b3f981e9a8972b81f6296a3d4d0ff0a1e2545d3fc316b.nix;
        revNum = 2;
        sha256 = "7bd50c6ca0f587b3a70b3f981e9a8972b81f6296a3d4d0ff0a1e2545d3fc316b";
      };
      default = "r2";
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
      r1 = {
        nix = import ../hackage/xxhash-0.0.2-r1-3a93d77ca7a009933c9ca0122a90f3ab74675d28ce59a559b426966b6a3c169f.nix;
        revNum = 1;
        sha256 = "3a93d77ca7a009933c9ca0122a90f3ab74675d28ce59a559b426966b6a3c169f";
      };
      r2 = {
        nix = import ../hackage/xxhash-0.0.2-r2-5fd5b325b88081ac1ff4295a9541d263acd89878c3d8b5074bf9035a961bb23c.nix;
        revNum = 2;
        sha256 = "5fd5b325b88081ac1ff4295a9541d263acd89878c3d8b5074bf9035a961bb23c";
      };
      default = "r2";
    };
  };
}