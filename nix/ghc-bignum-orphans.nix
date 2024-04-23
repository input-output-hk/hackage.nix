{
  "0.1" = {
    sha256 = "165d750d225f37c7004aac798399ceb7f89a968479c7a2800a7a66c31d1e950c";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-bignum-orphans-0.1-r0-e3256c6b653e023542344721d54e1f7af5b4ffcd4a4daacb78a8a558a5db8c90.nix;
        revNum = 0;
        sha256 = "e3256c6b653e023542344721d54e1f7af5b4ffcd4a4daacb78a8a558a5db8c90";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "a4c617c7b90288ba3e24c67633f99e97e11c2367686463b8884d2cd3591241db";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-bignum-orphans-0.1.1-r0-4f6dfb2a191dd3068c2915ba96a1ab3c4b78b4b4e57186698b9ab42007bfa926.nix;
        revNum = 0;
        sha256 = "4f6dfb2a191dd3068c2915ba96a1ab3c4b78b4b4e57186698b9ab42007bfa926";
      };
      r1 = {
        nix = import ../hackage/ghc-bignum-orphans-0.1.1-r1-9e4f0ac982bd25bfbeb0392d9714b542f55ed6c49cc372753414a3cd6dafff34.nix;
        revNum = 1;
        sha256 = "9e4f0ac982bd25bfbeb0392d9714b542f55ed6c49cc372753414a3cd6dafff34";
      };
      default = "r1";
    };
  };
}