{
  "0.0.1.0" = {
    sha256 = "c30c8c91fe1d2bf658418449dcd768ff8cf72d4cd1718f850e4b039c586e37a2";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-compat-plugin-0.0.1.0-r0-c55f4271c7684f1f1a4a1cc2a1fe0f753ac2e2180b5e47133ffa61f472d87e09.nix;
        revNum = 0;
        sha256 = "c55f4271c7684f1f1a4a1cc2a1fe0f753ac2e2180b5e47133ffa61f472d87e09";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "150b2a6f99719ce692c88e1c947ad2b80e27db4348e774b698a5a44c11ffcdb1";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-compat-plugin-0.0.2.0-r0-4c6a7f40312bb472965e0ca2471ad6e9816d3af3ed75f105b0194bad04295942.nix;
        revNum = 0;
        sha256 = "4c6a7f40312bb472965e0ca2471ad6e9816d3af3ed75f105b0194bad04295942";
      };
      default = "r0";
    };
  };
}