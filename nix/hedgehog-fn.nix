{
  "0.5" = {
    sha256 = "3ce49ab49ca332153be3e118c2abeacc14d1470d66408d436ebdd0a96da5eeb4";
    revisions = {
      r0 = {
        nix = import ../hackage/hedgehog-fn-0.5-r0-9d303fe0e53181ec422f7591ac5993a4858ab6a8ef214d38fba319b92e174cbe.nix;
        revNum = 0;
        sha256 = "9d303fe0e53181ec422f7591ac5993a4858ab6a8ef214d38fba319b92e174cbe";
        };
      default = "r0";
      };
    };
  "0.6" = {
    sha256 = "fb02b67fba97e24c226feba010d2b308934c54e20a0723b6ea7e4eb199f02176";
    revisions = {
      r0 = {
        nix = import ../hackage/hedgehog-fn-0.6-r0-0579dbe37064e6c5c69c032e48e27ce99362d37558d87f23caf1c8d99d4b2975.nix;
        revNum = 0;
        sha256 = "0579dbe37064e6c5c69c032e48e27ce99362d37558d87f23caf1c8d99d4b2975";
        };
      r1 = {
        nix = import ../hackage/hedgehog-fn-0.6-r1-61ad7f2a563825a037decfc0c3301f6d83b8d8ec16296f9b7a411b8a5e5567a7.nix;
        revNum = 1;
        sha256 = "61ad7f2a563825a037decfc0c3301f6d83b8d8ec16296f9b7a411b8a5e5567a7";
        };
      default = "r1";
      };
    };
  "1.0" = {
    sha256 = "170bc58d2e5a5bc15bc3e8a0a3ea71b11b8aab8b3bfd923b7f9394afe569b915";
    revisions = {
      r0 = {
        nix = import ../hackage/hedgehog-fn-1.0-r0-6316a86744e6730b031287a498b5089e5caab83c0a9af3c9d566696dd82642ff.nix;
        revNum = 0;
        sha256 = "6316a86744e6730b031287a498b5089e5caab83c0a9af3c9d566696dd82642ff";
        };
      r1 = {
        nix = import ../hackage/hedgehog-fn-1.0-r1-a4bc52eaba59ce23e221d77413ee6599cb82ada6600451d9bb347b8182ab82e6.nix;
        revNum = 1;
        sha256 = "a4bc52eaba59ce23e221d77413ee6599cb82ada6600451d9bb347b8182ab82e6";
        };
      r2 = {
        nix = import ../hackage/hedgehog-fn-1.0-r2-c296b6e3b78c8019f0a22392ce2af9220f7f4a3069ba6b34598655404c0ef6f4.nix;
        revNum = 2;
        sha256 = "c296b6e3b78c8019f0a22392ce2af9220f7f4a3069ba6b34598655404c0ef6f4";
        };
      default = "r2";
      };
    };
  }