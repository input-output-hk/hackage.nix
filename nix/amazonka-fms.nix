{
  "1.6.0" = {
    sha256 = "4033e2c0e67f140ab0db15b4e4a52ded46beccf621faf8af0930bb18da2ef7b1";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-fms-1.6.0-r0-da747d6dae662e2a390a9157329f27d5057cff5f25146aa7593d3660a8adda35.nix;
        revNum = 0;
        sha256 = "da747d6dae662e2a390a9157329f27d5057cff5f25146aa7593d3660a8adda35";
      };
      r1 = {
        nix = import ../hackage/amazonka-fms-1.6.0-r1-fea7922dcc1d6d4da03e48c892dcf2f446979a45d942d58f708dec34093deb0a.nix;
        revNum = 1;
        sha256 = "fea7922dcc1d6d4da03e48c892dcf2f446979a45d942d58f708dec34093deb0a";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "b01a8b447c8760f7e97a105c5441af0971c54d7151f5281075b19d532b962fdb";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-fms-1.6.1-r0-0b007d3dc6582d5b3c5c833dadb4a56a1e87bbb55595658a3e7eabe6b29bb445.nix;
        revNum = 0;
        sha256 = "0b007d3dc6582d5b3c5c833dadb4a56a1e87bbb55595658a3e7eabe6b29bb445";
      };
      r1 = {
        nix = import ../hackage/amazonka-fms-1.6.1-r1-fce02b91da0b3335e42130354cd6db09971309860c27f748fa4948654be6ba72.nix;
        revNum = 1;
        sha256 = "fce02b91da0b3335e42130354cd6db09971309860c27f748fa4948654be6ba72";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "876c9620535abcc9fde062c8a4108599a9ed852f20d2de4e4954517677e399ba";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-fms-2.0-r0-6659307f3cc0a838cb3e36da2908b514e1fd39a1a4e25063c1b26929f4c5995d.nix;
        revNum = 0;
        sha256 = "6659307f3cc0a838cb3e36da2908b514e1fd39a1a4e25063c1b26929f4c5995d";
      };
      r1 = {
        nix = import ../hackage/amazonka-fms-2.0-r1-f7bf9f3b4f86f82000bbae9eef3f881ef8b68732e67460387b14a7e826d35d23.nix;
        revNum = 1;
        sha256 = "f7bf9f3b4f86f82000bbae9eef3f881ef8b68732e67460387b14a7e826d35d23";
      };
      default = "r1";
    };
  };
}