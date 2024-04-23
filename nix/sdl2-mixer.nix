{
  "0.1" = {
    sha256 = "d924f31d9e1c87eed92d357ce20273dba44637861927188b8a44db2c0b2e2bc0";
    revisions = {
      r0 = {
        nix = import ../hackage/sdl2-mixer-0.1-r0-33c1f3c2f72c74eae810ed1ba13cc6925fbb0ab5ba83af804ec43c8850f7507c.nix;
        revNum = 0;
        sha256 = "33c1f3c2f72c74eae810ed1ba13cc6925fbb0ab5ba83af804ec43c8850f7507c";
      };
      r1 = {
        nix = import ../hackage/sdl2-mixer-0.1-r1-35ddbb5d4d1a0cecab6bbc1c026cac1dd0662390fa9b63c05c9cdc58ffe4f427.nix;
        revNum = 1;
        sha256 = "35ddbb5d4d1a0cecab6bbc1c026cac1dd0662390fa9b63c05c9cdc58ffe4f427";
      };
      default = "r1";
    };
  };
  "1.1.0" = {
    sha256 = "0f4c15a1bda7b265923278641d686756292fc2a8f1c5ced7f98916cc98df0acd";
    revisions = {
      r0 = {
        nix = import ../hackage/sdl2-mixer-1.1.0-r0-a9cbedfe551aaab3bb9b1319ab91fa32865d5124e97724a9e1f6675c59020c49.nix;
        revNum = 0;
        sha256 = "a9cbedfe551aaab3bb9b1319ab91fa32865d5124e97724a9e1f6675c59020c49";
      };
      r1 = {
        nix = import ../hackage/sdl2-mixer-1.1.0-r1-c809aecd91ebf9c759af66eebaa4f45f766f2603c13a73412abfd0bd1e02071a.nix;
        revNum = 1;
        sha256 = "c809aecd91ebf9c759af66eebaa4f45f766f2603c13a73412abfd0bd1e02071a";
      };
      default = "r1";
    };
  };
  "1.2.0.0" = {
    sha256 = "58141826af5d491794a74484fda770859e2271b0ede44cc75f2e562b70b7cf99";
    revisions = {
      r0 = {
        nix = import ../hackage/sdl2-mixer-1.2.0.0-r0-6a6b5a46c035c9e77eaf9c244e45de9e4a9b9a110890cfeeb9fa72faa2419cef.nix;
        revNum = 0;
        sha256 = "6a6b5a46c035c9e77eaf9c244e45de9e4a9b9a110890cfeeb9fa72faa2419cef";
      };
      default = "r0";
    };
  };
}