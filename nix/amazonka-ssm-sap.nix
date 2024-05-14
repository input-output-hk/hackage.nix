{
  "2.0" = {
    sha256 = "1d6cf7d78288b9592422933cb931c8b1f5aa8bcb8eb9d05fc1caba748c1703b9";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-ssm-sap-2.0-r0-3f829d420103c6f32c66e73ebcd1cff6286e39a241a9e68c0fc82c98656895d8.nix;
        revNum = 0;
        sha256 = "3f829d420103c6f32c66e73ebcd1cff6286e39a241a9e68c0fc82c98656895d8";
      };
      r1 = {
        nix = import ../hackage/amazonka-ssm-sap-2.0-r1-6bd83d3e8ded450d24ac806dca2a3ba234196c1143439c3f7da34a2ab7e0ee5a.nix;
        revNum = 1;
        sha256 = "6bd83d3e8ded450d24ac806dca2a3ba234196c1143439c3f7da34a2ab7e0ee5a";
      };
      default = "r1";
    };
  };
}