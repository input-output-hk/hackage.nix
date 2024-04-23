{
  "1.0" = {
    sha256 = "7f7dd54c54b252f3f3884a18282364a2b785ace96e8922b1d013fd62573800eb";
    revisions = {
      r0 = {
        nix = import ../hackage/lifted-threads-1.0-r0-094277be77083ae3f6aee0e2fe539bb43126c9bc0c168c4c05b23cfd48bab826.nix;
        revNum = 0;
        sha256 = "094277be77083ae3f6aee0e2fe539bb43126c9bc0c168c4c05b23cfd48bab826";
      };
      r1 = {
        nix = import ../hackage/lifted-threads-1.0-r1-9ca26a82d283f9c00a7de537198cd0ce1a05e6e802e0e7f82663c45242a9e973.nix;
        revNum = 1;
        sha256 = "9ca26a82d283f9c00a7de537198cd0ce1a05e6e802e0e7f82663c45242a9e973";
      };
      default = "r1";
    };
  };
}