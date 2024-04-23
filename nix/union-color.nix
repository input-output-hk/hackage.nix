{
  "0.1.1.0" = {
    sha256 = "41b79537369899fbb0a58893ec6bfc15f2097b5122741c4af6de27980dea473e";
    revisions = {
      r0 = {
        nix = import ../hackage/union-color-0.1.1.0-r0-e2348ab27c3df93e854634dd768b557c72f7afa2193676e5e7f2b27e2fbb9c83.nix;
        revNum = 0;
        sha256 = "e2348ab27c3df93e854634dd768b557c72f7afa2193676e5e7f2b27e2fbb9c83";
      };
      r1 = {
        nix = import ../hackage/union-color-0.1.1.0-r1-f9d34bca3674aec606d0a722e26859f1bd1e5e44d88d957cde69bab55eb556cc.nix;
        revNum = 1;
        sha256 = "f9d34bca3674aec606d0a722e26859f1bd1e5e44d88d957cde69bab55eb556cc";
      };
      default = "r1";
    };
  };
  "0.1.2.0" = {
    sha256 = "42e638fde9e73e577047625fdbb4ead9b3d2a2b7a994a172b7d8966555572290";
    revisions = {
      r0 = {
        nix = import ../hackage/union-color-0.1.2.0-r0-e98fd15e216d2729465fefb4a980a41fcf4b5ba022a40b2a8fbc5d6e7f6dadf8.nix;
        revNum = 0;
        sha256 = "e98fd15e216d2729465fefb4a980a41fcf4b5ba022a40b2a8fbc5d6e7f6dadf8";
      };
      default = "r0";
    };
  };
  "0.1.2.1" = {
    sha256 = "79837b7b707eb3f6bba8b8798f0ceb32ace4d86d390678a10881852806ab17a1";
    revisions = {
      r0 = {
        nix = import ../hackage/union-color-0.1.2.1-r0-0d8cd13f3fbe8135f34244f9847b415635d6066b06c92203fdb521a36cdaeae8.nix;
        revNum = 0;
        sha256 = "0d8cd13f3fbe8135f34244f9847b415635d6066b06c92203fdb521a36cdaeae8";
      };
      default = "r0";
    };
  };
}