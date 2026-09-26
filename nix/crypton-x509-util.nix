{
  "1.8.0" = {
    sha256 = "d284cb72a1f88494c6f0c0d213a46bb0783d62593ba2485a93b2b62c7e18b44f";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-x509-util-1.8.0-r0-ef4aabdfa0bbfc22c0ba8ac7714b8fb7e7ff7570fc6355f6a4949a40d45adb6a.nix;
        revNum = 0;
        sha256 = "ef4aabdfa0bbfc22c0ba8ac7714b8fb7e7ff7570fc6355f6a4949a40d45adb6a";
      };
      default = "r0";
    };
  };
  "1.9.0" = {
    sha256 = "b9ee3c8a075c1b8eb13953d39f5af0fcd046f1de3fc5168d935aae349aee86fe";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-x509-util-1.9.0-r0-fb9da7a52e8591671773ee03be93ab78a029a40111051cb6785853734d99b1c0.nix;
        revNum = 0;
        sha256 = "fb9da7a52e8591671773ee03be93ab78a029a40111051cb6785853734d99b1c0";
      };
      r1 = {
        nix = import ../hackage/crypton-x509-util-1.9.0-r1-d8bf51c0b61e71671a55c6caf9fcae722c9666e400a0ce2a5a93a29c0bdc1b6b.nix;
        revNum = 1;
        sha256 = "d8bf51c0b61e71671a55c6caf9fcae722c9666e400a0ce2a5a93a29c0bdc1b6b";
      };
      r2 = {
        nix = import ../hackage/crypton-x509-util-1.9.0-r2-c2781c1e5a9bcd4264f81952cc051ed485c77131e51706825959d6d4f5da76a0.nix;
        revNum = 2;
        sha256 = "c2781c1e5a9bcd4264f81952cc051ed485c77131e51706825959d6d4f5da76a0";
      };
      default = "r2";
    };
  };
}