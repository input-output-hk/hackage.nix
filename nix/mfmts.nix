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
  "1.1.0.0" = {
    sha256 = "82c6650e8af3fb31993963e2fd7b1d6664c847a6203de69c5670eb3609b36773";
    revisions = {
      r0 = {
        nix = import ../hackage/mfmts-1.1.0.0-r0-6e0b0719993a2683c8fa97429f06078c01a2f51a27b60e1906672dfb8979b93c.nix;
        revNum = 0;
        sha256 = "6e0b0719993a2683c8fa97429f06078c01a2f51a27b60e1906672dfb8979b93c";
      };
      r1 = {
        nix = import ../hackage/mfmts-1.1.0.0-r1-4cae248f7de08fe89f3d7fce5fa9d104c25fd1ae35eb8717f15cde9c491a1687.nix;
        revNum = 1;
        sha256 = "4cae248f7de08fe89f3d7fce5fa9d104c25fd1ae35eb8717f15cde9c491a1687";
      };
      default = "r1";
    };
  };
}