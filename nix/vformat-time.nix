{
  "0.1.0.0" = {
    sha256 = "66d03003395e5ab32f18b5d688f2315fb9126f7eaddbd6af0b7ed7ef7d4e6b68";
    revisions = {
      r0 = {
        nix = import ../hackage/vformat-time-0.1.0.0-r0-9985d13e1a12c7567848c59046ad4d7c32b4418981acc6f3564601bf0a4244d8.nix;
        revNum = 0;
        sha256 = "9985d13e1a12c7567848c59046ad4d7c32b4418981acc6f3564601bf0a4244d8";
        };
      r1 = {
        nix = import ../hackage/vformat-time-0.1.0.0-r1-87ecfe5a84a90bc2e40a33f1da7f77b32dbd9febc82c693e762ef38ef29c2144.nix;
        revNum = 1;
        sha256 = "87ecfe5a84a90bc2e40a33f1da7f77b32dbd9febc82c693e762ef38ef29c2144";
        };
      default = "r1";
      };
    };
  }