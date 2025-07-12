{
  "0.6.1" = {
    sha256 = "f4ac46930b9aada1ea4975a899dc924575a71fb139576f1b23f31197c2e059ef";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-socks-0.6.1-r0-f6b20fe859845a862d1e33be1d252054cb5310b2c8915efcd5b608b5b2237a4e.nix;
        revNum = 0;
        sha256 = "f6b20fe859845a862d1e33be1d252054cb5310b2c8915efcd5b608b5b2237a4e";
      };
      r1 = {
        nix = import ../hackage/crypton-socks-0.6.1-r1-e238161e4b83658a1b1ce94eac037b11bd3f514462d16d8843ed0b1c86025396.nix;
        revNum = 1;
        sha256 = "e238161e4b83658a1b1ce94eac037b11bd3f514462d16d8843ed0b1c86025396";
      };
      default = "r1";
    };
  };
  "0.6.2" = {
    sha256 = "a836087e5c277413c79e6d94a7bf346bfb61eaffb2f55555875c76dfeca69f3b";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-socks-0.6.2-r0-19f8f9a8c1973905ec000ea431bb4454a9c437b80f1e5f5f83ff84b964c49885.nix;
        revNum = 0;
        sha256 = "19f8f9a8c1973905ec000ea431bb4454a9c437b80f1e5f5f83ff84b964c49885";
      };
      default = "r0";
    };
  };
}