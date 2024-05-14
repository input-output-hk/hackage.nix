{
  "2.0" = {
    sha256 = "4f9f208f1bcc76c7f30b974a9988341b332ae5635f126851e563c950f11177ef";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sms-voice-2.0-r0-8c52189979bc161d5f024f3c5beca66f0f9a8cca8d67213d493a97081c7d101b.nix;
        revNum = 0;
        sha256 = "8c52189979bc161d5f024f3c5beca66f0f9a8cca8d67213d493a97081c7d101b";
      };
      r1 = {
        nix = import ../hackage/amazonka-sms-voice-2.0-r1-7582ed597e8feb4b36f3fc5a67ed30f88c1c965314f5f096239fc0d4c11c6f75.nix;
        revNum = 1;
        sha256 = "7582ed597e8feb4b36f3fc5a67ed30f88c1c965314f5f096239fc0d4c11c6f75";
      };
      default = "r1";
    };
  };
}