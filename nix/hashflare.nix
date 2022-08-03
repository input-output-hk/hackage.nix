{
  "0.1.0.0" = {
    sha256 = "2a58cbb78bf8263dc80d384264ba969edb91d4685e87c01b62a48d12fb60e82b";
    revisions = {
      r0 = {
        nix = import ../hackage/hashflare-0.1.0.0-r0-f2731c2e6cc8adc3cf632f8c43caaf7bc1786d986f30e408e114a6051768ab7d.nix;
        revNum = 0;
        sha256 = "f2731c2e6cc8adc3cf632f8c43caaf7bc1786d986f30e408e114a6051768ab7d";
        };
      r1 = {
        nix = import ../hackage/hashflare-0.1.0.0-r1-a6f690f635b12064b1176286f46e129a99d2b6707e54460ea9a6edb6fd969606.nix;
        revNum = 1;
        sha256 = "a6f690f635b12064b1176286f46e129a99d2b6707e54460ea9a6edb6fd969606";
        };
      r2 = {
        nix = import ../hackage/hashflare-0.1.0.0-r2-accd8a66c743cbd6580182c1a85916dd6422d67a1587b7e2927849cd53e38f9a.nix;
        revNum = 2;
        sha256 = "accd8a66c743cbd6580182c1a85916dd6422d67a1587b7e2927849cd53e38f9a";
        };
      default = "r2";
      };
    };
  }