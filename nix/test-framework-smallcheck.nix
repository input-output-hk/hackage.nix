{
  "0.1" = {
    sha256 = "77a24ced73b495014a1a68cc8da6896ed2a5a50a585570db994508b5b2329680";
    revisions = {
      r0 = {
        nix = import ../hackage/test-framework-smallcheck-0.1-r0-aaf97a8061576f87564a6edfb2b69edf15045fdab66825f9c57a6038b443cdf5.nix;
        revNum = 0;
        sha256 = "aaf97a8061576f87564a6edfb2b69edf15045fdab66825f9c57a6038b443cdf5";
      };
      r1 = {
        nix = import ../hackage/test-framework-smallcheck-0.1-r1-0dd3d272267dcc0bacb35bd05d64fc1bb304f2b424cd01251d459708e2ac3eac.nix;
        revNum = 1;
        sha256 = "0dd3d272267dcc0bacb35bd05d64fc1bb304f2b424cd01251d459708e2ac3eac";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "e1e12823c805bb1b63b1b8980e9e1b13282da7691411efea462a4cda17c56995";
    revisions = {
      r0 = {
        nix = import ../hackage/test-framework-smallcheck-0.1.1-r0-6c07505849cfb6891d9343805147f46f3aeca032d07bab981e2b2cab7227e7e5.nix;
        revNum = 0;
        sha256 = "6c07505849cfb6891d9343805147f46f3aeca032d07bab981e2b2cab7227e7e5";
      };
      r1 = {
        nix = import ../hackage/test-framework-smallcheck-0.1.1-r1-681713c9fac77e5a0dd67f9aae9f404cfb7cf6bd27b7495344c38cf86660889c.nix;
        revNum = 1;
        sha256 = "681713c9fac77e5a0dd67f9aae9f404cfb7cf6bd27b7495344c38cf86660889c";
      };
      default = "r1";
    };
  };
  "0.2" = {
    sha256 = "6081c4f35967b0d0cb92ac09a915fa9e2da01c401266b20ce18793fbc2bceff6";
    revisions = {
      r0 = {
        nix = import ../hackage/test-framework-smallcheck-0.2-r0-e9c299f00eebe305633edceefd00dd497037fd193090281b31cb0accf4a81105.nix;
        revNum = 0;
        sha256 = "e9c299f00eebe305633edceefd00dd497037fd193090281b31cb0accf4a81105";
      };
      default = "r0";
    };
  };
}