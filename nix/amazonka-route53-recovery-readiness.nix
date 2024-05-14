{
  "2.0" = {
    sha256 = "72d5571288c7c984deb7061a9d3b430786c41bb428d0d00c239766c3a8a7b674";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-route53-recovery-readiness-2.0-r0-84df831c5cc4ab6cdb8c044c67d1e65bec2ee4ec57e33187338981791485030f.nix;
        revNum = 0;
        sha256 = "84df831c5cc4ab6cdb8c044c67d1e65bec2ee4ec57e33187338981791485030f";
      };
      r1 = {
        nix = import ../hackage/amazonka-route53-recovery-readiness-2.0-r1-acee6cf2bbdcafac6a21a783a8068dd1dfc7d89cff20b35f5e6185b7fe4e0043.nix;
        revNum = 1;
        sha256 = "acee6cf2bbdcafac6a21a783a8068dd1dfc7d89cff20b35f5e6185b7fe4e0043";
      };
      default = "r1";
    };
  };
}