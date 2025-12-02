{
  "0.1.0.0" = {
    sha256 = "2b5ff2fe8182c389e36ec7ba254011ebd310fb838d7c2fd5b88bb08303edc604";
    revisions = {
      r0 = {
        nix = import ../hackage/quic-simple-0.1.0.0-r0-c9b03dbbe0824ffca27b10adba7091a843d43b9476bd6198b3de009e68aefaff.nix;
        revNum = 0;
        sha256 = "c9b03dbbe0824ffca27b10adba7091a843d43b9476bd6198b3de009e68aefaff";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "b91dd51535fd74ff2469638bc3393dd32c6d98228dae5500520adc350aed84ea";
    revisions = {
      r0 = {
        nix = import ../hackage/quic-simple-0.1.0.1-r0-0a2d4d3a99152830376b206d1999981b8b45a1df29ac93f22fb4ea3dfce238a4.nix;
        revNum = 0;
        sha256 = "0a2d4d3a99152830376b206d1999981b8b45a1df29ac93f22fb4ea3dfce238a4";
      };
      r1 = {
        nix = import ../hackage/quic-simple-0.1.0.1-r1-960fe4790882ca29b66cfa7d674ffade9b3029e1b64b716a09ca6956c35c3642.nix;
        revNum = 1;
        sha256 = "960fe4790882ca29b66cfa7d674ffade9b3029e1b64b716a09ca6956c35c3642";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "afcbb4db913ee711e1a85de9234811679eba63c6aa89a53e26d6a8f7a900e0dc";
    revisions = {
      r0 = {
        nix = import ../hackage/quic-simple-0.1.1.0-r0-2a983d9ac3e2f966d4bbabcd28bbdce6920027abf2ac5aa4d223989765573227.nix;
        revNum = 0;
        sha256 = "2a983d9ac3e2f966d4bbabcd28bbdce6920027abf2ac5aa4d223989765573227";
      };
      default = "r0";
    };
  };
}