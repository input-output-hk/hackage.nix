{
  "0.0.0.0" = {
    sha256 = "0b54c103972fc66eb8e383eaceb82d2bf99e441528bf29f4a5bd1e065baf7096";
    revisions = {
      r0 = {
        nix = import ../hackage/iris-0.0.0.0-r0-c0abe00e56cb70138b350c20ad8f7358617fee3e32fa514d0190112a3c27650d.nix;
        revNum = 0;
        sha256 = "c0abe00e56cb70138b350c20ad8f7358617fee3e32fa514d0190112a3c27650d";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "8482d3ddbdc7bf812ed3eaecaf39d5d37b85d56232b6e16f3ca988a3e6addaa2";
    revisions = {
      r0 = {
        nix = import ../hackage/iris-0.1.0.0-r0-dd6d664b87dc78b9a2f3b7316dedb5aacdaebb84083f97c50625c5d445edf288.nix;
        revNum = 0;
        sha256 = "dd6d664b87dc78b9a2f3b7316dedb5aacdaebb84083f97c50625c5d445edf288";
      };
      default = "r0";
    };
  };
}