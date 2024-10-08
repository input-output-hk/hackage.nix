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
      default = "r1";
    };
  };
}