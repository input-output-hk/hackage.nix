{
  "0.1.0.0" = {
    sha256 = "b9d4ecf8e9286bedc47a8fcfb8875a73e07cd464ca606a0b67741a9e0f2f219f";
    revisions = {
      r0 = {
        nix = import ../hackage/crypto-keys-ssh-0.1.0.0-r0-a02bab83a082d13a8153523977db7d479672d4140d12efd369bbf9b9dd4d299d.nix;
        revNum = 0;
        sha256 = "a02bab83a082d13a8153523977db7d479672d4140d12efd369bbf9b9dd4d299d";
      };
      r1 = {
        nix = import ../hackage/crypto-keys-ssh-0.1.0.0-r1-03fdb74bca4a9924ebcf09126ed4fd663776302a44116755adbb3d02323a45fd.nix;
        revNum = 1;
        sha256 = "03fdb74bca4a9924ebcf09126ed4fd663776302a44116755adbb3d02323a45fd";
      };
      default = "r1";
    };
  };
}