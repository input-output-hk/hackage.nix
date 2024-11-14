{
  "0.1" = {
    sha256 = "4308df5266deacf0aa68e845ffced25e7a7e7e7217129ea9d2310c0f8819ab9d";
    revisions = {
      r0 = {
        nix = import ../hackage/debruijn-safe-0.1-r0-c445448952adea801a18d15573d5501c1f7fe7ad558b8508ecfc6c4ac24d791b.nix;
        revNum = 0;
        sha256 = "c445448952adea801a18d15573d5501c1f7fe7ad558b8508ecfc6c4ac24d791b";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "6bb8920863f99195730e8b4910ff581318fe4b1e2dbcffbe7795ddab19fcac4b";
    revisions = {
      r0 = {
        nix = import ../hackage/debruijn-safe-0.2-r0-370aee176e77708bb9134a170ad0e9cc0706f03d8797426429fa13d76716cab4.nix;
        revNum = 0;
        sha256 = "370aee176e77708bb9134a170ad0e9cc0706f03d8797426429fa13d76716cab4";
      };
      default = "r0";
    };
  };
}