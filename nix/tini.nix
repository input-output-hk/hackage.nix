{
  "0.1.0.0" = {
    sha256 = "664b2f101cbd5e59eddc8a53e827c247b9c69421bba895a60ed7edf9b0141f78";
    revisions = {
      r0 = {
        nix = import ../hackage/tini-0.1.0.0-r0-9586074ce83ead06f1693d694fc55b177118d2b9daec59ddda840236b5c95c9a.nix;
        revNum = 0;
        sha256 = "9586074ce83ead06f1693d694fc55b177118d2b9daec59ddda840236b5c95c9a";
        };
      r1 = {
        nix = import ../hackage/tini-0.1.0.0-r1-03d5aca5cbb56293246f5fd61c1def7d2fe0b94e13b5756a9379cf4e82cb2de9.nix;
        revNum = 1;
        sha256 = "03d5aca5cbb56293246f5fd61c1def7d2fe0b94e13b5756a9379cf4e82cb2de9";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "7183ef4873b8ba9c3cbb520e25601f395351797f9ebddfa5167cf08063ed527a";
    revisions = {
      r0 = {
        nix = import ../hackage/tini-0.1.0.1-r0-2bb0cbb42c6e45ba3cf94b83b5c37bea019fb21d4f2ecd42b834f2d022b27af2.nix;
        revNum = 0;
        sha256 = "2bb0cbb42c6e45ba3cf94b83b5c37bea019fb21d4f2ecd42b834f2d022b27af2";
        };
      default = "r0";
      };
    };
  }