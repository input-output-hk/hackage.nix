{
  "1.9.3" = {
    sha256 = "6af6d1e86a2fae6a8c53429d069970b48755c85f4b0bad3edbd1a54030648d52";
    revisions = {
      r0 = {
        nix = import ../hackage/Chart-gtk3-1.9.3-r0-575a3e38547f58f242ce593acbaac453904a63ee50cb9e9a4bb6c19fee84d3dd.nix;
        revNum = 0;
        sha256 = "575a3e38547f58f242ce593acbaac453904a63ee50cb9e9a4bb6c19fee84d3dd";
      };
      r1 = {
        nix = import ../hackage/Chart-gtk3-1.9.3-r1-40c91cd69ab79a94181d2c73adb2906352084675d3439f4db3f75a3b26b9de50.nix;
        revNum = 1;
        sha256 = "40c91cd69ab79a94181d2c73adb2906352084675d3439f4db3f75a3b26b9de50";
      };
      default = "r1";
    };
  };
}