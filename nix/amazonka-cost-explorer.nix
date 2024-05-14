{
  "1.6.0" = {
    sha256 = "625ca4d0a2e23e711dcf525158a648f3a6ebbfa7036acd3a6aea476e7af86d3b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-cost-explorer-1.6.0-r0-fcb89bfa40f06ae519c990d138d1b2d16d600648c1f0c89dcce0e5f7b598524a.nix;
        revNum = 0;
        sha256 = "fcb89bfa40f06ae519c990d138d1b2d16d600648c1f0c89dcce0e5f7b598524a";
      };
      r1 = {
        nix = import ../hackage/amazonka-cost-explorer-1.6.0-r1-9c1cc23488f1796900df980d9ddce94d8d0b1a62b27fee41d60e9883e5ae45d6.nix;
        revNum = 1;
        sha256 = "9c1cc23488f1796900df980d9ddce94d8d0b1a62b27fee41d60e9883e5ae45d6";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "8cbfb47e5fafc1e9686061fb0b27034d22f230bd7f5ed8ee5a9c07bde2782cc3";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-cost-explorer-1.6.1-r0-e81d42dbdef267dc6d2cce70548f0c5170c875f235ca26cba5c00fcf88ebcc43.nix;
        revNum = 0;
        sha256 = "e81d42dbdef267dc6d2cce70548f0c5170c875f235ca26cba5c00fcf88ebcc43";
      };
      r1 = {
        nix = import ../hackage/amazonka-cost-explorer-1.6.1-r1-4e6e69223fce2057c2410be33e1039219fed1493a03c26b9628c4c33cb058e72.nix;
        revNum = 1;
        sha256 = "4e6e69223fce2057c2410be33e1039219fed1493a03c26b9628c4c33cb058e72";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "6183dc45f2df682b75c5cf40c85d532d5872255b5f8c0a02240762018aee8376";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-cost-explorer-2.0-r0-10084f4d230551699b93abf70326c2ac2ef1f01e4f5b4dd207a321bfaa1126e4.nix;
        revNum = 0;
        sha256 = "10084f4d230551699b93abf70326c2ac2ef1f01e4f5b4dd207a321bfaa1126e4";
      };
      r1 = {
        nix = import ../hackage/amazonka-cost-explorer-2.0-r1-27a6322f0ad85eff6624aaf3ad74884ec97df32057b6defe7eb0f7d1ba2ccca7.nix;
        revNum = 1;
        sha256 = "27a6322f0ad85eff6624aaf3ad74884ec97df32057b6defe7eb0f7d1ba2ccca7";
      };
      default = "r1";
    };
  };
}