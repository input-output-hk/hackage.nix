{
  "0.6.0" = {
    sha256 = "19a9547b1c8c5e2cc6ef17d7a82fd311dfc22c46d57c35300ec7c9d11799236e";
    revisions = {
      r0 = {
        nix = import ../hackage/topaz-0.6.0-r0-2fbc574c4b1156645507cf14f22d65d32f24faaf41129657a0dcf2558bd4228e.nix;
        revNum = 0;
        sha256 = "2fbc574c4b1156645507cf14f22d65d32f24faaf41129657a0dcf2558bd4228e";
      };
      default = "r0";
    };
  };
  "0.7.0" = {
    sha256 = "f254fade467d42bc7761ab7cec0ad2f42f1b3167dce4bd088d8d5483360089a2";
    revisions = {
      r0 = {
        nix = import ../hackage/topaz-0.7.0-r0-7161d123ebc77be05a7eec6abb5eead869021b0fa484672fe0e597d6e61210a7.nix;
        revNum = 0;
        sha256 = "7161d123ebc77be05a7eec6abb5eead869021b0fa484672fe0e597d6e61210a7";
      };
      r1 = {
        nix = import ../hackage/topaz-0.7.0-r1-2f3a543883a3022be7772d992bd696a25b82fd043b808a72efeb302cfcb3ec32.nix;
        revNum = 1;
        sha256 = "2f3a543883a3022be7772d992bd696a25b82fd043b808a72efeb302cfcb3ec32";
      };
      default = "r1";
    };
  };
}