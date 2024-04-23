{
  "0.1.0.0" = {
    sha256 = "1aa52a0ad5de9ec8a8d58b33baa4b545e9f9dec7d0e02b6ba4b9209822ff8667";
    revisions = {
      r0 = {
        nix = import ../hackage/hstorchat-0.1.0.0-r0-917a53b2a25cc38c8fc81938304ad55533a5790893c13eb7cc565427e6ffa554.nix;
        revNum = 0;
        sha256 = "917a53b2a25cc38c8fc81938304ad55533a5790893c13eb7cc565427e6ffa554";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "6ccc80734d0b0e234e83ae8ad9a05537fdfe86b52dbef6f1d2073f6c9cd107b5";
    revisions = {
      r0 = {
        nix = import ../hackage/hstorchat-0.1.1.0-r0-e540bfa86e564f0077b2780bec75669b63e122d8d15bb501d3ef453eb1605b34.nix;
        revNum = 0;
        sha256 = "e540bfa86e564f0077b2780bec75669b63e122d8d15bb501d3ef453eb1605b34";
      };
      default = "r0";
    };
  };
}