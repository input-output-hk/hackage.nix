{
  "0.0.0.1" = {
    sha256 = "8a1dc10dffd485632bb519db13abbfd6a6f9c3cbdc12f33a8c8c6a0359dc104f";
    revisions = {
      r0 = {
        nix = import ../hackage/gjk-0.0.0.1-r0-6c24a80f81a5662b2a613ccc2f03ac90c623f300562d9e36ee39035e36ccf796.nix;
        revNum = 0;
        sha256 = "6c24a80f81a5662b2a613ccc2f03ac90c623f300562d9e36ee39035e36ccf796";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "90221d1e4733bb4088ffd71a0832095f4628e1f0232009141a74150c30c4cc86";
    revisions = {
      r0 = {
        nix = import ../hackage/gjk-0.0.0.2-r0-b4cbede620df1d2572a8025387c3dfb72110ef0707e5489fad8e6763c9244e60.nix;
        revNum = 0;
        sha256 = "b4cbede620df1d2572a8025387c3dfb72110ef0707e5489fad8e6763c9244e60";
      };
      default = "r0";
    };
  };
}