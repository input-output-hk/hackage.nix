{
  "0.1.0.0" = {
    sha256 = "04ee08c649ea3f32a34ee04df42e02052b61be0dffc92a123cb0a2a6a343375b";
    revisions = {
      r0 = {
        nix = import ../hackage/shibuya-core-0.1.0.0-r0-8cd5e3cecafc4e50e50141cbb3dce24381af4c7287026e58b86942c72a75653b.nix;
        revNum = 0;
        sha256 = "8cd5e3cecafc4e50e50141cbb3dce24381af4c7287026e58b86942c72a75653b";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "18f507e6f7b32fab913a28a8673bf0ce7c382c530426e06225b3b75617075198";
    revisions = {
      r0 = {
        nix = import ../hackage/shibuya-core-0.2.0.0-r0-719b888f829a083c1f2c1ec678268a08f740a85054d6f3404fcc653506b35519.nix;
        revNum = 0;
        sha256 = "719b888f829a083c1f2c1ec678268a08f740a85054d6f3404fcc653506b35519";
      };
      default = "r0";
    };
  };
}