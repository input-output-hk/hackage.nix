{
  "2.0" = {
    sha256 = "f7ae7bba1a87358d11caad7ff7849163e610d38fb2a645203931399268b0c64e";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-dlm-2.0-r0-9baaf19690a4d74b9a26807ee7f15122291dbc8949021dd7500181b3114d8c7d.nix;
        revNum = 0;
        sha256 = "9baaf19690a4d74b9a26807ee7f15122291dbc8949021dd7500181b3114d8c7d";
      };
      r1 = {
        nix = import ../hackage/amazonka-dlm-2.0-r1-c555461e708e5cb7cbdf6251865a554f0600f65852243ef93e12aa9e5a8c6915.nix;
        revNum = 1;
        sha256 = "c555461e708e5cb7cbdf6251865a554f0600f65852243ef93e12aa9e5a8c6915";
      };
      default = "r1";
    };
  };
}