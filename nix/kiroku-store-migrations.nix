{
  "0.1.0.0" = {
    sha256 = "7c9c31ff4bcaf4261357b113566c5cfcb283682357c8ea58fe9f24581f88402a";
    revisions = {
      r0 = {
        nix = import ../hackage/kiroku-store-migrations-0.1.0.0-r0-504cd3fcb81ac03ed4626a5dc745c76f7f897823872988d21617f9b68f10acd4.nix;
        revNum = 0;
        sha256 = "504cd3fcb81ac03ed4626a5dc745c76f7f897823872988d21617f9b68f10acd4";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "064fbc02f724f34d2bf5f97aa13c8f65aed2404e8da37a4048d9bd253543b724";
    revisions = {
      r0 = {
        nix = import ../hackage/kiroku-store-migrations-0.1.1.0-r0-9c292617327e7f0d916d5a792c1cb72b6351c815683a77c1da0a99c96f123855.nix;
        revNum = 0;
        sha256 = "9c292617327e7f0d916d5a792c1cb72b6351c815683a77c1da0a99c96f123855";
      };
      default = "r0";
    };
  };
}