{
  "0.1" = {
    sha256 = "edf7ae0d86b76d2bcbacf7f68913cf4f3aa4822474beddc84050b57830c14011";
    revisions = {
      r0 = {
        nix = import ../hackage/network-simple-ws-0.1-r0-295250c75a7ddd493c9b13412ae00d6275f31a462c9376c92ea7eb94f9f8a36c.nix;
        revNum = 0;
        sha256 = "295250c75a7ddd493c9b13412ae00d6275f31a462c9376c92ea7eb94f9f8a36c";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "20705d6180e9c1a9c7906d54801b8db25f4e5ae9d822123c888fec05cda2e873";
    revisions = {
      r0 = {
        nix = import ../hackage/network-simple-ws-0.2-r0-d67557a348b70ec6527abb29c3439e459cc8656d62d9165b5bae353f8abbddcb.nix;
        revNum = 0;
        sha256 = "d67557a348b70ec6527abb29c3439e459cc8656d62d9165b5bae353f8abbddcb";
      };
      default = "r0";
    };
  };
}