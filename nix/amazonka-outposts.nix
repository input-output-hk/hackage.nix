{
  "2.0" = {
    sha256 = "ce1546eb3f35295229c6c1a4f453b5fd90aed3165677680fb9bd15757bc9a65d";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-outposts-2.0-r0-7523fcfd2af5b2894513c2f6c22631dd097bf5ce4fad98f762e67f1f34b8326a.nix;
        revNum = 0;
        sha256 = "7523fcfd2af5b2894513c2f6c22631dd097bf5ce4fad98f762e67f1f34b8326a";
      };
      r1 = {
        nix = import ../hackage/amazonka-outposts-2.0-r1-e421ee615d1ed2d2d7626e1c54b70b329f90af365badb69e82fdc91f3df5c11f.nix;
        revNum = 1;
        sha256 = "e421ee615d1ed2d2d7626e1c54b70b329f90af365badb69e82fdc91f3df5c11f";
      };
      default = "r1";
    };
  };
}