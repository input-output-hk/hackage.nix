{
  "2.0" = {
    sha256 = "92b44f8bd39c655da0ebb0f7424b7bb8c04474e7340f77bc556368499b9a2dd5";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-connect-contact-lens-2.0-r0-9d81aa0de9d71b4cf6972f86fb611302e7e5858e1777f1d1a7a8d8a82a60e561.nix;
        revNum = 0;
        sha256 = "9d81aa0de9d71b4cf6972f86fb611302e7e5858e1777f1d1a7a8d8a82a60e561";
      };
      r1 = {
        nix = import ../hackage/amazonka-connect-contact-lens-2.0-r1-9e82d58e55acd5ab4f4467a19cb5835c54d51043ef8dec669fd483b0f02bbc8e.nix;
        revNum = 1;
        sha256 = "9e82d58e55acd5ab4f4467a19cb5835c54d51043ef8dec669fd483b0f02bbc8e";
      };
      default = "r1";
    };
  };
}