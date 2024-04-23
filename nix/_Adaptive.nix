{
  "0.1" = {
    sha256 = "f2e4428d38fb70e2f15102d6d52fec4f288e00132c7bd3dcb176a258ff6e3f6b";
    revisions = {
      r0 = {
        nix = import ../hackage/Adaptive-0.1-r0-86db7425621188a86faeb4b3f19fb1ab9644d1bae84e3275c0a07463e23b9cde.nix;
        revNum = 0;
        sha256 = "86db7425621188a86faeb4b3f19fb1ab9644d1bae84e3275c0a07463e23b9cde";
      };
      default = "r0";
    };
  };
  "0.22" = {
    sha256 = "414b90797ae8b15f3ce13bedffabf4898be430a77531a4d42a88f9bc13bbb21f";
    revisions = {
      r0 = {
        nix = import ../hackage/Adaptive-0.22-r0-a11735a34a0ded31a66c33ba89b2a957ed8bcea843eb76362fd5cc98239d3f1b.nix;
        revNum = 0;
        sha256 = "a11735a34a0ded31a66c33ba89b2a957ed8bcea843eb76362fd5cc98239d3f1b";
      };
      r1 = {
        nix = import ../hackage/Adaptive-0.22-r1-2a99eaa43a77bf7b2426fae24bcd2de622b87d89a9f143e16cc846e22c469530.nix;
        revNum = 1;
        sha256 = "2a99eaa43a77bf7b2426fae24bcd2de622b87d89a9f143e16cc846e22c469530";
      };
      default = "r1";
    };
  };
  "0.23" = {
    sha256 = "0c5d3e880bbcd6245ccefa16d1d2cc15f7e48bd4ab50723f321883b91b6a4758";
    revisions = {
      r0 = {
        nix = import ../hackage/Adaptive-0.23-r0-3454d27a2dcc143773391c2649a1ffd0fa2e0ef444ba8f33c79163d1cf72345d.nix;
        revNum = 0;
        sha256 = "3454d27a2dcc143773391c2649a1ffd0fa2e0ef444ba8f33c79163d1cf72345d";
      };
      r1 = {
        nix = import ../hackage/Adaptive-0.23-r1-36c76cf96db195ede96306358e65aec311211569c236983efb473c3e97b864b5.nix;
        revNum = 1;
        sha256 = "36c76cf96db195ede96306358e65aec311211569c236983efb473c3e97b864b5";
      };
      default = "r1";
    };
  };
}