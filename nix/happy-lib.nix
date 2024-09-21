{
  "2.0" = {
    sha256 = "979b0d4fc74a4a25f0d7a8482a7078beb67642224026fa49673571e0f8c68a2b";
    revisions = {
      r0 = {
        nix = import ../hackage/happy-lib-2.0-r0-2ed01e55fa50e6177a4d8dae70cc731adfd65b54a4070e05c8b80e52f21a1d78.nix;
        revNum = 0;
        sha256 = "2ed01e55fa50e6177a4d8dae70cc731adfd65b54a4070e05c8b80e52f21a1d78";
      };
      default = "r0";
    };
  };
  "2.0.1" = {
    sha256 = "ae83b019037a55cfec5d95d03dc0e31489d685d52341d16658027938511fa5be";
    revisions = {
      r0 = {
        nix = import ../hackage/happy-lib-2.0.1-r0-19331c029192a37fab20192b989bc32582634287a023c0823c4eb151cd8bd251.nix;
        revNum = 0;
        sha256 = "19331c029192a37fab20192b989bc32582634287a023c0823c4eb151cd8bd251";
      };
      default = "r0";
    };
  };
}