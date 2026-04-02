{
  "1.0.0.0" = {
    sha256 = "a8c75a7a8cd24eb5fcaff84658b7eb03deb68aa0003fcb877f41bf0194c84fc0";
    revisions = {
      r0 = {
        nix = import ../hackage/mfmts-1.0.0.0-r0-edd78f764a82ff812e37005f43d30e54545189e7e8ffba6452638d6d55955fea.nix;
        revNum = 0;
        sha256 = "edd78f764a82ff812e37005f43d30e54545189e7e8ffba6452638d6d55955fea";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "d1846eb4249470c3a28721e7715dd669aaa8862c874b876b888cc1693c8ac839";
    revisions = {
      r0 = {
        nix = import ../hackage/mfmts-1.0.0.1-r0-1bada6671675dfa64bc90806fd6c8de016d0c89160e82f9df0b39d575b5aa954.nix;
        revNum = 0;
        sha256 = "1bada6671675dfa64bc90806fd6c8de016d0c89160e82f9df0b39d575b5aa954";
      };
      default = "r0";
    };
  };
}