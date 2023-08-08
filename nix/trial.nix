{
  "0.0.0.0" = {
    sha256 = "9ccf0e356feecf90cee1c75c8e9932ae14ab23cfc8bb51a364e2ad811240d852";
    revisions = {
      r0 = {
        nix = import ../hackage/trial-0.0.0.0-r0-6eac7caf6fe4acb34a446a7f89142e8dc6d18b72376a790db730c7f4693e4627.nix;
        revNum = 0;
        sha256 = "6eac7caf6fe4acb34a446a7f89142e8dc6d18b72376a790db730c7f4693e4627";
        };
      r1 = {
        nix = import ../hackage/trial-0.0.0.0-r1-834d3be439dc9b52a759a45a4d3944e5e55c3d50fd5874003147cc1f6231d4aa.nix;
        revNum = 1;
        sha256 = "834d3be439dc9b52a759a45a4d3944e5e55c3d50fd5874003147cc1f6231d4aa";
        };
      r2 = {
        nix = import ../hackage/trial-0.0.0.0-r2-7946afde7134db6c5c35b7ab611018e2925e9c9fbb8c0fcf9831f3c7020928f1.nix;
        revNum = 2;
        sha256 = "7946afde7134db6c5c35b7ab611018e2925e9c9fbb8c0fcf9831f3c7020928f1";
        };
      default = "r2";
      };
    };
  }