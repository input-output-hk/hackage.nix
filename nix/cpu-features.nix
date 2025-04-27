{
  "0.1.0.0" = {
    sha256 = "767f2a683262fefa325eca72a25b3f944d1ab9706229b51c54a80d5f6b77be6c";
    revisions = {
      r0 = {
        nix = import ../hackage/cpu-features-0.1.0.0-r0-0952185942e47204464d9b4732dd35bdc544aac05e13a14a562bde9ddc2b99c3.nix;
        revNum = 0;
        sha256 = "0952185942e47204464d9b4732dd35bdc544aac05e13a14a562bde9ddc2b99c3";
      };
      r1 = {
        nix = import ../hackage/cpu-features-0.1.0.0-r1-11ef67347e0aae4755d0de758f70ae8552de39635538531892e8f43c225e3917.nix;
        revNum = 1;
        sha256 = "11ef67347e0aae4755d0de758f70ae8552de39635538531892e8f43c225e3917";
      };
      default = "r1";
    };
  };
}