{
  "0.2.0.0" = {
    sha256 = "cce095028479c8ddb75d78573a74770b3477ee7192690538bccaa0d5b7ae3384";
    revisions = {
      r0 = {
        nix = import ../hackage/reflex-backend-socket-0.2.0.0-r0-9587dee97dcab50153192ec942b26974b8d10c9e88f5622194ffd0b297d4fc9e.nix;
        revNum = 0;
        sha256 = "9587dee97dcab50153192ec942b26974b8d10c9e88f5622194ffd0b297d4fc9e";
        };
      r1 = {
        nix = import ../hackage/reflex-backend-socket-0.2.0.0-r1-fd3d377d7200238ba1e77fc9010991b3b3cd38add98423ce6ebb72408ffc5c87.nix;
        revNum = 1;
        sha256 = "fd3d377d7200238ba1e77fc9010991b3b3cd38add98423ce6ebb72408ffc5c87";
        };
      default = "r1";
      };
    };
  "0.2.0.1" = {
    sha256 = "1f79de5c29fc3aa2d2aa1f7f5db7b571bbaaaffcb537580e2333234618fc99dc";
    revisions = {
      r0 = {
        nix = import ../hackage/reflex-backend-socket-0.2.0.1-r0-f3379188b3dd03529ac805fe97d583932d4d729901637fdcd051ba6e29c688f5.nix;
        revNum = 0;
        sha256 = "f3379188b3dd03529ac805fe97d583932d4d729901637fdcd051ba6e29c688f5";
        };
      default = "r0";
      };
    };
  }