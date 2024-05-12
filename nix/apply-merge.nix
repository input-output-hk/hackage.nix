{
  "0.1.0.0" = {
    sha256 = "932034eaf7198f7b79d68434af214b66db94c7e846adefed98e0270fa54975f2";
    revisions = {
      r0 = {
        nix = import ../hackage/apply-merge-0.1.0.0-r0-c30db94c39a29f1426a69826f375fc4b86e024fbea11c0f4ee045e3ba87e612d.nix;
        revNum = 0;
        sha256 = "c30db94c39a29f1426a69826f375fc4b86e024fbea11c0f4ee045e3ba87e612d";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "2847e4e34230f72c8c1e51cbc2f896c6ab333066cf1363df4efd8e5c464dd5ea";
    revisions = {
      r0 = {
        nix = import ../hackage/apply-merge-0.1.1.0-r0-44ed8586d06f2aa63d048c7debb4a59c17efc1d2740126800d09e022bdeac89b.nix;
        revNum = 0;
        sha256 = "44ed8586d06f2aa63d048c7debb4a59c17efc1d2740126800d09e022bdeac89b";
      };
      default = "r0";
    };
  };
}