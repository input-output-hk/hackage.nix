{
  "0.3.0" = {
    sha256 = "48a0b462da49d15dd099102b726cd0f47a19192a8a99205720560c6525ac86ac";
    revisions = {
      r0 = {
        nix = import ../hackage/haskoin-bitcoind-0.3.0-r0-1734578f779b7368323290c1852be634dd62186607151cdca2d7356d0de76874.nix;
        revNum = 0;
        sha256 = "1734578f779b7368323290c1852be634dd62186607151cdca2d7356d0de76874";
        };
      default = "r0";
      };
    };
  "0.4.1" = {
    sha256 = "207b3ff48d4a2121d92a3e1c0748585f50343d034b547bd8eb00529dd700b2d4";
    revisions = {
      r0 = {
        nix = import ../hackage/haskoin-bitcoind-0.4.1-r0-389930308ef383a78e5330e1d27d84f947f37f0fe4396333834638f216195e1f.nix;
        revNum = 0;
        sha256 = "389930308ef383a78e5330e1d27d84f947f37f0fe4396333834638f216195e1f";
        };
      default = "r0";
      };
    };
  }