{
  "2.0" = {
    sha256 = "270ddd8bf19fe97bb7751b5fcb047fd542b49ec89bb9c3b0d2ee11d77f5d2bcc";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-worklink-2.0-r0-5ccb71caf9bbb4284ba18d4af2639b7c0aa298874699bcd4f237bf9a2374cd2b.nix;
        revNum = 0;
        sha256 = "5ccb71caf9bbb4284ba18d4af2639b7c0aa298874699bcd4f237bf9a2374cd2b";
      };
      r1 = {
        nix = import ../hackage/amazonka-worklink-2.0-r1-ef25e7a9d4f21435547eedea6dfa710ef3173b1c16807f5d93676399f20018a8.nix;
        revNum = 1;
        sha256 = "ef25e7a9d4f21435547eedea6dfa710ef3173b1c16807f5d93676399f20018a8";
      };
      default = "r1";
    };
  };
}