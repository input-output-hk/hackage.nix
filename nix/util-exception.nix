{
  "0.1.0.0" = {
    sha256 = "79cd17b92598d89e5fac931b7ad37bf2b2e104fb6588b8628da8eb20880f2d78";
    revisions = {
      r0 = {
        nix = import ../hackage/util-exception-0.1.0.0-r0-1869d4c301fc3dab84dff952acdab01773d727c9b618bae7df875527a05b431e.nix;
        revNum = 0;
        sha256 = "1869d4c301fc3dab84dff952acdab01773d727c9b618bae7df875527a05b431e";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "7dc9fd5487ed3c3558886cc90b453bc7adf89324f5ea898e8ce8afaef409a637";
    revisions = {
      r0 = {
        nix = import ../hackage/util-exception-0.2.0.0-r0-a1a4ec0e9d7e1f462179d4f6314b04bf7783a67613d6a41762e5f5010694dcab.nix;
        revNum = 0;
        sha256 = "a1a4ec0e9d7e1f462179d4f6314b04bf7783a67613d6a41762e5f5010694dcab";
      };
      r1 = {
        nix = import ../hackage/util-exception-0.2.0.0-r1-135b42c667453098c4a1c830b0518bf1a5b6a5a2e33e6a72b2eec793a5fcbc39.nix;
        revNum = 1;
        sha256 = "135b42c667453098c4a1c830b0518bf1a5b6a5a2e33e6a72b2eec793a5fcbc39";
      };
      r2 = {
        nix = import ../hackage/util-exception-0.2.0.0-r2-a0aab6d5a90038077158896f995974ac052c48d69f9fd7cae02ebad7263ebac0.nix;
        revNum = 2;
        sha256 = "a0aab6d5a90038077158896f995974ac052c48d69f9fd7cae02ebad7263ebac0";
      };
      default = "r2";
    };
  };
}