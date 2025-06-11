{
  "0.0.1.0" = {
    sha256 = "632486d68f194a27195b25fb37cd9abff187ad9a6ec46f105fb5a5f8cbec2182";
    revisions = {
      r0 = {
        nix = import ../hackage/langchain-hs-0.0.1.0-r0-acd89d084abd1072811dfaf0f1edfeb35e3d5272d5589ee3c0071322393b89d9.nix;
        revNum = 0;
        sha256 = "acd89d084abd1072811dfaf0f1edfeb35e3d5272d5589ee3c0071322393b89d9";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "7f265673a2fcceaf87f9951a7a492ec78004a9d2b3ab5f9e0cbaba7b6b7d033e";
    revisions = {
      r0 = {
        nix = import ../hackage/langchain-hs-0.0.2.0-r0-2958a994bc78143b5f72f2c5343644544b3a5dc6225053720ebdc34e58dae063.nix;
        revNum = 0;
        sha256 = "2958a994bc78143b5f72f2c5343644544b3a5dc6225053720ebdc34e58dae063";
      };
      r1 = {
        nix = import ../hackage/langchain-hs-0.0.2.0-r1-b0ab34838b5360934014e4122747ca6579e6f11ed6a62ce48b48108d179bd4ff.nix;
        revNum = 1;
        sha256 = "b0ab34838b5360934014e4122747ca6579e6f11ed6a62ce48b48108d179bd4ff";
      };
      r2 = {
        nix = import ../hackage/langchain-hs-0.0.2.0-r2-744646dc3f3db847ff160b30d7ffa04249d49a72910c364072b953c6b5376562.nix;
        revNum = 2;
        sha256 = "744646dc3f3db847ff160b30d7ffa04249d49a72910c364072b953c6b5376562";
      };
      default = "r2";
    };
  };
}