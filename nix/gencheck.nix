{
  "0.1" = {
    sha256 = "1ec40f62fc2db4f7e10db9b054f53a8978fb79c427eb9f085f81fef760cd06bd";
    revisions = {
      r0 = {
        nix = import ../hackage/gencheck-0.1-r0-febbfcd21e4326a4dd6e7322c4a184c62e736bbfc8a3b93d4143ab4d86a4519d.nix;
        revNum = 0;
        sha256 = "febbfcd21e4326a4dd6e7322c4a184c62e736bbfc8a3b93d4143ab4d86a4519d";
        };
      r1 = {
        nix = import ../hackage/gencheck-0.1-r1-80418d15404b8d245057b355848fab25864b42a773251322306e141f522c8d72.nix;
        revNum = 1;
        sha256 = "80418d15404b8d245057b355848fab25864b42a773251322306e141f522c8d72";
        };
      default = "r1";
      };
    };
  "0.1.1" = {
    sha256 = "393a785d946ed359cb0d78dcd2c3633912abd5f5e3783615a310e3fa47b841b9";
    revisions = {
      r0 = {
        nix = import ../hackage/gencheck-0.1.1-r0-5781686396e67ec142339ef0d3e1920c0d4d6421dfa261beb980f0d2ba14e8e6.nix;
        revNum = 0;
        sha256 = "5781686396e67ec142339ef0d3e1920c0d4d6421dfa261beb980f0d2ba14e8e6";
        };
      r1 = {
        nix = import ../hackage/gencheck-0.1.1-r1-93ae65db07db60a55d73fe6b7a09e443f25a1524791e59103a97a8d726780eda.nix;
        revNum = 1;
        sha256 = "93ae65db07db60a55d73fe6b7a09e443f25a1524791e59103a97a8d726780eda";
        };
      default = "r1";
      };
    };
  }