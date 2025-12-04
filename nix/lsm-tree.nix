{
  "1.0.0.0" = {
    sha256 = "a412d59a29048963761485b3165d9fc1603c03b49559cfe7e06815754918a9ee";
    revisions = {
      r0 = {
        nix = import ../hackage/lsm-tree-1.0.0.0-r0-be2873d92e54cc2ca0d7f716f76726bfc39fd242366e84956266b9ce72bcdb59.nix;
        revNum = 0;
        sha256 = "be2873d92e54cc2ca0d7f716f76726bfc39fd242366e84956266b9ce72bcdb59";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "707f2a7e0e61bffbe375e9e413e2c9f7890c7ceea915ce4fdc9afa14093ffcac";
    revisions = {
      r0 = {
        nix = import ../hackage/lsm-tree-1.0.0.1-r0-8db002816d10f145dee4e07b1593b12c5202c5204d2b097f5b0b5f743183cdd0.nix;
        revNum = 0;
        sha256 = "8db002816d10f145dee4e07b1593b12c5202c5204d2b097f5b0b5f743183cdd0";
      };
      default = "r0";
    };
  };
}