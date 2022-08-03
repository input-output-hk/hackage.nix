{
  "0.3.0" = {
    sha256 = "1e852e45a7d4f6383dc38c5c1cd901da6ec1135afdd0e656ea3ba620820be5b4";
    revisions = {
      r0 = {
        nix = import ../hackage/bugzilla-redhat-0.3.0-r0-3fbcbc7abd949b44dc392b2c11ab7202583d5e8bc599d7327ac60b0ea9f3bed6.nix;
        revNum = 0;
        sha256 = "3fbcbc7abd949b44dc392b2c11ab7202583d5e8bc599d7327ac60b0ea9f3bed6";
        };
      r1 = {
        nix = import ../hackage/bugzilla-redhat-0.3.0-r1-9dcd515641256d965208dce03148d106a7fab7c118c01734f9bc6b24a66dba90.nix;
        revNum = 1;
        sha256 = "9dcd515641256d965208dce03148d106a7fab7c118c01734f9bc6b24a66dba90";
        };
      default = "r1";
      };
    };
  "0.3.1" = {
    sha256 = "3be2b5afc3cca9e15d094a8628e4c8e44ee4a7f04f99943a78db764ecb501e21";
    revisions = {
      r0 = {
        nix = import ../hackage/bugzilla-redhat-0.3.1-r0-efa5301e1039c8cbaabbdbce506349c03b20099e4b4512b3fbf783a56a2223b7.nix;
        revNum = 0;
        sha256 = "efa5301e1039c8cbaabbdbce506349c03b20099e4b4512b3fbf783a56a2223b7";
        };
      default = "r0";
      };
    };
  "0.3.2" = {
    sha256 = "b5aa9e859363b4116ebebda1b1e6adbaa835035dbff59d64379b4abf70155bb8";
    revisions = {
      r0 = {
        nix = import ../hackage/bugzilla-redhat-0.3.2-r0-1ef2731e7d02b0611a8d53bd869a7cdf0845bf23610eda3cdf022be7d0a5c833.nix;
        revNum = 0;
        sha256 = "1ef2731e7d02b0611a8d53bd869a7cdf0845bf23610eda3cdf022be7d0a5c833";
        };
      default = "r0";
      };
    };
  "0.3.3" = {
    sha256 = "8d44dbcd5b8e5af636a6b67268e753bb926c3edd0be810ba87c82096819f54db";
    revisions = {
      r0 = {
        nix = import ../hackage/bugzilla-redhat-0.3.3-r0-60b0d6f2ecc899d0639b4e37aa4d29fc91582570aa3491bfdac8613fa23b55b8.nix;
        revNum = 0;
        sha256 = "60b0d6f2ecc899d0639b4e37aa4d29fc91582570aa3491bfdac8613fa23b55b8";
        };
      default = "r0";
      };
    };
  "1.0.0" = {
    sha256 = "9d42130e3e65edefdde2c1327d2a6893522ca32d4021e21a77e169e1079025bd";
    revisions = {
      r0 = {
        nix = import ../hackage/bugzilla-redhat-1.0.0-r0-185de74a495f317fee6546cff1f4040e7aaeb0c2a1bdbdae27556fefba351d05.nix;
        revNum = 0;
        sha256 = "185de74a495f317fee6546cff1f4040e7aaeb0c2a1bdbdae27556fefba351d05";
        };
      r1 = {
        nix = import ../hackage/bugzilla-redhat-1.0.0-r1-e4774d5f62814e10cbb2f42a16cc9556dd2ad361fa8387ddf81bc87f032056e7.nix;
        revNum = 1;
        sha256 = "e4774d5f62814e10cbb2f42a16cc9556dd2ad361fa8387ddf81bc87f032056e7";
        };
      r2 = {
        nix = import ../hackage/bugzilla-redhat-1.0.0-r2-0b79b2f721741828788d9f297f5d4454ebc056e5eaa7aa58fbbbf1ce4f9e9bf4.nix;
        revNum = 2;
        sha256 = "0b79b2f721741828788d9f297f5d4454ebc056e5eaa7aa58fbbbf1ce4f9e9bf4";
        };
      default = "r2";
      };
    };
  }