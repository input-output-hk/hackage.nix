{
  "1.8.10" = {
    sha256 = "514d06c6af62f6b190c488f5f846dd3195228fdde574f4bc48f53218f472b716";
    revisions = {
      r0 = {
        nix = import ../hackage/hdf5-1.8.10-r0-43a32e590dd456c490cfa5390a6342ed622a0e967f8e8892032cba4681b6cdb2.nix;
        revNum = 0;
        sha256 = "43a32e590dd456c490cfa5390a6342ed622a0e967f8e8892032cba4681b6cdb2";
        };
      default = "r0";
      };
    };
  "1.8.9" = {
    sha256 = "ffb930fc1099c7345687589d4cb2dde18a61522b8cbf4194545ebba4780518d9";
    revisions = {
      r0 = {
        nix = import ../hackage/hdf5-1.8.9-r0-92613bed3f43ecd81da7264be34b38f98fc8f01b91b3029fdad1d23ca641cfa5.nix;
        revNum = 0;
        sha256 = "92613bed3f43ecd81da7264be34b38f98fc8f01b91b3029fdad1d23ca641cfa5";
        };
      default = "r0";
      };
    };
  }