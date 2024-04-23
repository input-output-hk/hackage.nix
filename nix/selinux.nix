{
  "0.1" = {
    sha256 = "da3e0d996b2a1017d02feac06cb3fc3af1dd9ea939c995ea394d78128869bf1b";
    revisions = {
      r0 = {
        nix = import ../hackage/selinux-0.1-r0-cc069569235d1632344ce38627bf17d2ee8b11e7a924047c04fb6f4d499a9eb8.nix;
        revNum = 0;
        sha256 = "cc069569235d1632344ce38627bf17d2ee8b11e7a924047c04fb6f4d499a9eb8";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "1c2397bf95f960a9d8f7863f7d201e62364ee8e41f462b8bfa6c7831a0e214e4";
    revisions = {
      r0 = {
        nix = import ../hackage/selinux-0.1.1-r0-31a2ec21a405473dadbcd81b679d24922071569e8e054d1efdce13cb39413db4.nix;
        revNum = 0;
        sha256 = "31a2ec21a405473dadbcd81b679d24922071569e8e054d1efdce13cb39413db4";
      };
      default = "r0";
    };
  };
}