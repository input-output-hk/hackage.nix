{
  "0.1.0.0" = {
    sha256 = "21ef72a6579a56528fd158aa9594e50257224cf77dcc303a5fd153a2097a1ba8";
    revisions = {
      r0 = {
        nix = import ../hackage/lens-xml-0.1.0.0-r0-63b9ba33b46d05e06ee50856fe72f6b712051213cfa2d16a354746f85f3964f3.nix;
        revNum = 0;
        sha256 = "63b9ba33b46d05e06ee50856fe72f6b712051213cfa2d16a354746f85f3964f3";
        };
      r1 = {
        nix = import ../hackage/lens-xml-0.1.0.0-r1-5e9b888e270e22fee6210c9a6f329e31e80d4c0a54d064ef29ef969bc443b21d.nix;
        revNum = 1;
        sha256 = "5e9b888e270e22fee6210c9a6f329e31e80d4c0a54d064ef29ef969bc443b21d";
        };
      default = "r1";
      };
    };
  }