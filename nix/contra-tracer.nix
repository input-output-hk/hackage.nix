{
  "0.1.0.0" = {
    sha256 = "7911ed93f65799954a41acfe9e49ef4e32196af95b02101e0e760885f520cf90";
    revisions = {
      r0 = {
        nix = import ../hackage/contra-tracer-0.1.0.0-r0-e2e08bab68af3c1c955645350395621c30903ca9bad1e028d218df609b7dd0de.nix;
        revNum = 0;
        sha256 = "e2e08bab68af3c1c955645350395621c30903ca9bad1e028d218df609b7dd0de";
      };
      r1 = {
        nix = import ../hackage/contra-tracer-0.1.0.0-r1-baedfb666c7be40bc568d2a74bfae8943737ff81daf32d2c9139babd68b779e4.nix;
        revNum = 1;
        sha256 = "baedfb666c7be40bc568d2a74bfae8943737ff81daf32d2c9139babd68b779e4";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "9eebc1e410b2e50a7da6418b9bf194e22c92f2c05b3724aec502d82ca87262e5";
    revisions = {
      r0 = {
        nix = import ../hackage/contra-tracer-0.2.0.0-r0-7e1df39934fb0ecf4533196c819946455ec377fbc169b819be151906db244fc2.nix;
        revNum = 0;
        sha256 = "7e1df39934fb0ecf4533196c819946455ec377fbc169b819be151906db244fc2";
      };
      default = "r0";
    };
  };
}