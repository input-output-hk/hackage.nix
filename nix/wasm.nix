{
  "1.0.0" = {
    sha256 = "a6ffada6d5db7c8f12b8ec1b8d4fc829f48e818788d2a1f6fc27bb0218a6b450";
    revisions = {
      r0 = {
        nix = import ../hackage/wasm-1.0.0-r0-95a5af2264da9996eb1756c09030e78f595aa2d5e62d0d671180a02d321f0d6c.nix;
        revNum = 0;
        sha256 = "95a5af2264da9996eb1756c09030e78f595aa2d5e62d0d671180a02d321f0d6c";
      };
      default = "r0";
    };
  };
  "1.1.0" = {
    sha256 = "33c5b8d2b4da7ab7e27da554815be474a274142f9c0a746565a4b95bf176c2ec";
    revisions = {
      r0 = {
        nix = import ../hackage/wasm-1.1.0-r0-76698bdab61f95f6175a00c6a7d8b86323878c9eb425188c193cd46e9f5716b5.nix;
        revNum = 0;
        sha256 = "76698bdab61f95f6175a00c6a7d8b86323878c9eb425188c193cd46e9f5716b5";
      };
      default = "r0";
    };
  };
  "1.1.1" = {
    sha256 = "3272401af3eb0aeff28de6ebdd0a4df01c094bb2f91d627a93bccfc851d89b00";
    revisions = {
      r0 = {
        nix = import ../hackage/wasm-1.1.1-r0-cea1e6c43d1ee46392eabb6b0f4fc469b6d8b987bcfbdd4694f9c48be346f229.nix;
        revNum = 0;
        sha256 = "cea1e6c43d1ee46392eabb6b0f4fc469b6d8b987bcfbdd4694f9c48be346f229";
      };
      default = "r0";
    };
  };
}