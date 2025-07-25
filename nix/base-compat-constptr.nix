{
  "0.1.0.0" = {
    sha256 = "831022545ba59f6757a53164802850f1d2ec3fabe62a3d5c7730da45bd22aa19";
    revisions = {
      r0 = {
        nix = import ../hackage/base-compat-constptr-0.1.0.0-r0-8cdce0ad0c0fe0563dec864453d1eec99127e0e81c013d773dba7ceaebf05bae.nix;
        revNum = 0;
        sha256 = "8cdce0ad0c0fe0563dec864453d1eec99127e0e81c013d773dba7ceaebf05bae";
      };
      r1 = {
        nix = import ../hackage/base-compat-constptr-0.1.0.0-r1-b499cdebde75c2008039990a9bf63bca54faeea2a1c7e9a912f9da3b26bd3236.nix;
        revNum = 1;
        sha256 = "b499cdebde75c2008039990a9bf63bca54faeea2a1c7e9a912f9da3b26bd3236";
      };
      r2 = {
        nix = import ../hackage/base-compat-constptr-0.1.0.0-r2-e35ed29882da2d15e9544f1e3b92e6dc0a40760a366b7136503ded4e5a86a70f.nix;
        revNum = 2;
        sha256 = "e35ed29882da2d15e9544f1e3b92e6dc0a40760a366b7136503ded4e5a86a70f";
      };
      default = "r2";
    };
  };
}