{
  "1.0.0" = {
    sha256 = "4861349e1da08d77035dabf81bda18602de6f5890529d96e0c7a56a58a12f884";
    revisions = {
      r0 = {
        nix = import ../hackage/copr-1.0.0-r0-fc9410348c106e912ac9b0f089b4460291249c34e4c6e1fb0edf3ad3846f7a38.nix;
        revNum = 0;
        sha256 = "fc9410348c106e912ac9b0f089b4460291249c34e4c6e1fb0edf3ad3846f7a38";
        };
      default = "r0";
      };
    };
  "1.1.0" = {
    sha256 = "d78617ca54bbeef59feb8dd09b659f2ea2c8d3507af8178bf804e93e5b7032b4";
    revisions = {
      r0 = {
        nix = import ../hackage/copr-1.1.0-r0-bdcde2ca0b0201d575562e88b0440ba747d775e0faab8d83d450f581e5035cbc.nix;
        revNum = 0;
        sha256 = "bdcde2ca0b0201d575562e88b0440ba747d775e0faab8d83d450f581e5035cbc";
        };
      default = "r0";
      };
    };
  "1.1.1" = {
    sha256 = "dce6829db3ed8b6c8949e00af8e2d798174280758d23309f497f7b143330ef7d";
    revisions = {
      r0 = {
        nix = import ../hackage/copr-1.1.1-r0-5f1bc6449c47c6d692098d97efd51979273b3650db6e6952d2ab52a02df5722a.nix;
        revNum = 0;
        sha256 = "5f1bc6449c47c6d692098d97efd51979273b3650db6e6952d2ab52a02df5722a";
        };
      r1 = {
        nix = import ../hackage/copr-1.1.1-r1-ef9fb8be7d257feae9e4647de62d489860e2bd6510e34a35465cf5b763fa2425.nix;
        revNum = 1;
        sha256 = "ef9fb8be7d257feae9e4647de62d489860e2bd6510e34a35465cf5b763fa2425";
        };
      default = "r1";
      };
    };
  }