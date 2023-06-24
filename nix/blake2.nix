{
  "0.1.0" = {
    sha256 = "d4cdb38b973125fdd80a12f335ec536dc5c5d1dfd5611c9ebe46c3bf78841ce5";
    revisions = {
      r0 = {
        nix = import ../hackage/blake2-0.1.0-r0-e473a5a74d4e958577153ac044d79d58a5082b4a79788fe1e3b24ef69f3300e8.nix;
        revNum = 0;
        sha256 = "e473a5a74d4e958577153ac044d79d58a5082b4a79788fe1e3b24ef69f3300e8";
        };
      r1 = {
        nix = import ../hackage/blake2-0.1.0-r1-f898609ee23d864e73c0dcf7d341b296ef57fb8d36f2e5c068516eb0db4e475d.nix;
        revNum = 1;
        sha256 = "f898609ee23d864e73c0dcf7d341b296ef57fb8d36f2e5c068516eb0db4e475d";
        };
      default = "r1";
      };
    };
  "0.2.0" = {
    sha256 = "07d910e3f5c6e98f5a6b9d53dbe5f52506c3859b513bc7493b52552a28382cfc";
    revisions = {
      r0 = {
        nix = import ../hackage/blake2-0.2.0-r0-2175e66e5f4a72b47407cb79b252b0adc5d82f34a958418b75e1d7871187b507.nix;
        revNum = 0;
        sha256 = "2175e66e5f4a72b47407cb79b252b0adc5d82f34a958418b75e1d7871187b507";
        };
      r1 = {
        nix = import ../hackage/blake2-0.2.0-r1-bb50ec5dfd845adee79e6d27c91fad5e72dec2e03f6b9d808327e639744a56ac.nix;
        revNum = 1;
        sha256 = "bb50ec5dfd845adee79e6d27c91fad5e72dec2e03f6b9d808327e639744a56ac";
        };
      default = "r1";
      };
    };
  "0.3.0" = {
    sha256 = "3b5ab376b87f481f2245f62734071a0e4a80b8ba9cd0cc67a407dd36f23c2379";
    revisions = {
      r0 = {
        nix = import ../hackage/blake2-0.3.0-r0-7ef18127a23d0246efd97cc8146613e66f917abb0f4af4d2c1bc9ed5b26a835f.nix;
        revNum = 0;
        sha256 = "7ef18127a23d0246efd97cc8146613e66f917abb0f4af4d2c1bc9ed5b26a835f";
        };
      r1 = {
        nix = import ../hackage/blake2-0.3.0-r1-6b10e8632454ae42d20d34f730d18cd59bfc85ad7bdab61566b4ba9a56f93b86.nix;
        revNum = 1;
        sha256 = "6b10e8632454ae42d20d34f730d18cd59bfc85ad7bdab61566b4ba9a56f93b86";
        };
      default = "r1";
      };
    };
  }