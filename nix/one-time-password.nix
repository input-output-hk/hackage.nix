{
  "1.0.0.0" = {
    sha256 = "c68580e87b52147cfc678ed95dac7f43e7214b9a9eb814b4d1bf3c3ffaed67c0";
    revisions = {
      r0 = {
        nix = import ../hackage/one-time-password-1.0.0.0-r0-35971cd84d1186f2cfb04b64d1e8b5369fd665e034e09851b0c0e32e4223265d.nix;
        revNum = 0;
        sha256 = "35971cd84d1186f2cfb04b64d1e8b5369fd665e034e09851b0c0e32e4223265d";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "40e1c392c846dfa9b08696f38e6426c9cba9fbe9699b51d4c6c49c7929eafcce";
    revisions = {
      r0 = {
        nix = import ../hackage/one-time-password-1.0.0.1-r0-22f832f4f09bf330ec6b5b913e3594cf23fd7d0da280d07ad4ac40c4cbbfd9d5.nix;
        revNum = 0;
        sha256 = "22f832f4f09bf330ec6b5b913e3594cf23fd7d0da280d07ad4ac40c4cbbfd9d5";
      };
      default = "r0";
    };
  };
  "2.0.0" = {
    sha256 = "0a35ba546367070cbef67b80fc1e4eea3df5df3e683d3422873fa13a2b2bf9a2";
    revisions = {
      r0 = {
        nix = import ../hackage/one-time-password-2.0.0-r0-9da17e88b6e57282cd436d2eb9a7683385dd4b594d45930d46f7215c2a964f39.nix;
        revNum = 0;
        sha256 = "9da17e88b6e57282cd436d2eb9a7683385dd4b594d45930d46f7215c2a964f39";
      };
      default = "r0";
    };
  };
  "3.0.0.0" = {
    sha256 = "142fe2bf0650277d1450dac7fb4689a12dc6ee26fed3f5cfac4110ff94995979";
    revisions = {
      r0 = {
        nix = import ../hackage/one-time-password-3.0.0.0-r0-da6d63fddd2e433d3a0f62c7dc3cb632129b87c7293d3266d39931db411ef2d1.nix;
        revNum = 0;
        sha256 = "da6d63fddd2e433d3a0f62c7dc3cb632129b87c7293d3266d39931db411ef2d1";
      };
      r1 = {
        nix = import ../hackage/one-time-password-3.0.0.0-r1-880b233760c9dc2e362707c0021ea4a0d867d70ff0ba93e5dc1e534ec706bac1.nix;
        revNum = 1;
        sha256 = "880b233760c9dc2e362707c0021ea4a0d867d70ff0ba93e5dc1e534ec706bac1";
      };
      r2 = {
        nix = import ../hackage/one-time-password-3.0.0.0-r2-edc8c6b586ee14acc2a65a65f40be594fcd4bedd5cb4673f0ef77fd279478390.nix;
        revNum = 2;
        sha256 = "edc8c6b586ee14acc2a65a65f40be594fcd4bedd5cb4673f0ef77fd279478390";
      };
      r3 = {
        nix = import ../hackage/one-time-password-3.0.0.0-r3-0fdbd2f539bef71b5f6c16be8998a53de5bbdeff6f3fe94d64819fc417996c35.nix;
        revNum = 3;
        sha256 = "0fdbd2f539bef71b5f6c16be8998a53de5bbdeff6f3fe94d64819fc417996c35";
      };
      default = "r3";
    };
  };
}