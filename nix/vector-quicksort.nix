{
  "0.1" = {
    sha256 = "6e4ecf3d3a6d48004bbb4d7f887883c87b5b01355544c8c3d0fe8fa394ff0ae9";
    revisions = {
      r0 = {
        nix = import ../hackage/vector-quicksort-0.1-r0-ff92b192ac3d519aaa09638bd94eefc3d4d05de2dab1983c691cc3d53bdbf346.nix;
        revNum = 0;
        sha256 = "ff92b192ac3d519aaa09638bd94eefc3d4d05de2dab1983c691cc3d53bdbf346";
      };
      r1 = {
        nix = import ../hackage/vector-quicksort-0.1-r1-1265ff9c2866298b0b7e6965b6d2b3639544eff492e3f62503a8899ba9a307a2.nix;
        revNum = 1;
        sha256 = "1265ff9c2866298b0b7e6965b6d2b3639544eff492e3f62503a8899ba9a307a2";
      };
      default = "r1";
    };
  };
  "0.2" = {
    sha256 = "ab83803c3182476fea5e3b3fa50bc4ee92aa0bab07a667b0115ad42b636f9e33";
    revisions = {
      r0 = {
        nix = import ../hackage/vector-quicksort-0.2-r0-18d0999483954286a3f6e46e2896110973d4e04cc9c3523fdbd8dfeaab584400.nix;
        revNum = 0;
        sha256 = "18d0999483954286a3f6e46e2896110973d4e04cc9c3523fdbd8dfeaab584400";
      };
      default = "r0";
    };
  };
}