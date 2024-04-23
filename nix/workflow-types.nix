{
  "0.0.0" = {
    sha256 = "54991eaf641bdf43e0d3e99bee650fa6ae2690adeb34d0f6378b5a0d93aaafa7";
    revisions = {
      r0 = {
        nix = import ../hackage/workflow-types-0.0.0-r0-14ff7945c9c9668f8af796527d31a446d60005f55362644bedf2d287281ee13d.nix;
        revNum = 0;
        sha256 = "14ff7945c9c9668f8af796527d31a446d60005f55362644bedf2d287281ee13d";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "c20e58f943f6e606def792a90dedba8bf590c001ef4ed6e2705507ee3b5e8c20";
    revisions = {
      r0 = {
        nix = import ../hackage/workflow-types-0.0.1-r0-d9b108cb953262eac754066acf25cf763a7299f4e237d766c6b071244ecd8dcd.nix;
        revNum = 0;
        sha256 = "d9b108cb953262eac754066acf25cf763a7299f4e237d766c6b071244ecd8dcd";
      };
      default = "r0";
    };
  };
}