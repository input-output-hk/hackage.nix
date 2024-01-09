{
  "0.1.0.0" = {
    sha256 = "9c1ec257893b200792007af9642d5c80211b6ae7aabe72fdb935f6a887825cff";
    revisions = {
      r0 = {
        nix = import ../hackage/gemmula-0.1.0.0-r0-b4d92a9852e2766c8d38aec1247bfa3b457881cdeeedbefbf448513f3540b9cd.nix;
        revNum = 0;
        sha256 = "b4d92a9852e2766c8d38aec1247bfa3b457881cdeeedbefbf448513f3540b9cd";
        };
      r1 = {
        nix = import ../hackage/gemmula-0.1.0.0-r1-dfea1c8f2acae11581d0be93446fb9f1ed65e6a7055c6251abd8b03711bd475d.nix;
        revNum = 1;
        sha256 = "dfea1c8f2acae11581d0be93446fb9f1ed65e6a7055c6251abd8b03711bd475d";
        };
      default = "r1";
      };
    };
  "1.0.0" = {
    sha256 = "08fc791261873e5ed657da8db46da9afb780fa15a04037b7fbb9bcb172ba7c10";
    revisions = {
      r0 = {
        nix = import ../hackage/gemmula-1.0.0-r0-d40b1cf56febe441b1837500404e58cc832210a34077b36891f042418801c37a.nix;
        revNum = 0;
        sha256 = "d40b1cf56febe441b1837500404e58cc832210a34077b36891f042418801c37a";
        };
      default = "r0";
      };
    };
  "1.0.1" = {
    sha256 = "ac2ee9afb6fe09e75fd75e7a6fc9f842b94696ac1ac2c8af20b0aa09939e47a7";
    revisions = {
      r0 = {
        nix = import ../hackage/gemmula-1.0.1-r0-a28c6cac34b3e52059b4fccdeb2a6a265fff7a73a09e58503c8aac365e231b0d.nix;
        revNum = 0;
        sha256 = "a28c6cac34b3e52059b4fccdeb2a6a265fff7a73a09e58503c8aac365e231b0d";
        };
      default = "r0";
      };
    };
  }