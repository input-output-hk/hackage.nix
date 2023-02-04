{
  "0.0.3.6" = {
    sha256 = "9750d91c1e45f9a09a0d9fd6b47020dcea9d49de7cba5558a29ebf1a4e19d0f2";
    revisions = {
      r0 = {
        nix = import ../hackage/hackage-cli-0.0.3.6-r0-008ca8164bd5a803bc27e9f99d91c766174e4b35994e633fe7f8aa382840e861.nix;
        revNum = 0;
        sha256 = "008ca8164bd5a803bc27e9f99d91c766174e4b35994e633fe7f8aa382840e861";
        };
      r1 = {
        nix = import ../hackage/hackage-cli-0.0.3.6-r1-8022f7f0587df9774fc5299642aff356776700809683dbd9a48d45c3b32d4218.nix;
        revNum = 1;
        sha256 = "8022f7f0587df9774fc5299642aff356776700809683dbd9a48d45c3b32d4218";
        };
      default = "r1";
      };
    };
  "0.1.0.0" = {
    sha256 = "b8fdd69b267a058e58a9b90b87a40ab68ef890f17db69462add5b5cbd67d8272";
    revisions = {
      r0 = {
        nix = import ../hackage/hackage-cli-0.1.0.0-r0-a0e73f69331e85d99c862cc99311b062e10b6cb2c9daf885073bd234eb1be117.nix;
        revNum = 0;
        sha256 = "a0e73f69331e85d99c862cc99311b062e10b6cb2c9daf885073bd234eb1be117";
        };
      r1 = {
        nix = import ../hackage/hackage-cli-0.1.0.0-r1-8a72d7bdada9723779c0776a7d8371e675ecf98051737ff060b25843f6e0c36c.nix;
        revNum = 1;
        sha256 = "8a72d7bdada9723779c0776a7d8371e675ecf98051737ff060b25843f6e0c36c";
        };
      default = "r1";
      };
    };
  }