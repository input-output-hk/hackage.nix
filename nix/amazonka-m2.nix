{
  "2.0" = {
    sha256 = "536764124b473e0005b413a050fc2857cda939cb8df06140b0618b4089c17003";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-m2-2.0-r0-f4607f8ffe2deb5fdbda470f3ac158f9a4e535f1b6d43d76239fc3e1b364929e.nix;
        revNum = 0;
        sha256 = "f4607f8ffe2deb5fdbda470f3ac158f9a4e535f1b6d43d76239fc3e1b364929e";
      };
      r1 = {
        nix = import ../hackage/amazonka-m2-2.0-r1-4fbd8965f7a715f74be09514d0fbdbb2aa408e469d680661a7b8a59ee0791c57.nix;
        revNum = 1;
        sha256 = "4fbd8965f7a715f74be09514d0fbdbb2aa408e469d680661a7b8a59ee0791c57";
      };
      default = "r1";
    };
  };
}