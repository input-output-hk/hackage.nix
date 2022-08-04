{
  "0.4.0.0" = {
    sha256 = "98e3776d1f4e5752629d1b14a38017bdcac46ae95b578ce3aa136719983c455a";
    revisions = {
      r0 = {
        nix = import ../hackage/strict-base-0.4.0.0-r0-1b888e51f703ebbb80d8983bd0cd311e0d917fefc5b96437856f74977d1e2262.nix;
        revNum = 0;
        sha256 = "1b888e51f703ebbb80d8983bd0cd311e0d917fefc5b96437856f74977d1e2262";
        };
      r1 = {
        nix = import ../hackage/strict-base-0.4.0.0-r1-2ff4e43cb95eedf2995558d7fc34d19362846413dd39e6aa6a5b3ea8228fef9f.nix;
        revNum = 1;
        sha256 = "2ff4e43cb95eedf2995558d7fc34d19362846413dd39e6aa6a5b3ea8228fef9f";
        };
      default = "r1";
      };
    };
  }