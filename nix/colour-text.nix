{
  "0.0.0.0" = {
    sha256 = "e6f21b5815186ea28277fdf2a6b4a3b779d03b068b49a31190cd9845afeeef04";
    revisions = {
      r0 = {
        nix = import ../hackage/colour-text-0.0.0.0-r0-963ce13489dbf5e3c64da4abf504cfba0364e416f27c2d91ffcf8ccfb83e25a5.nix;
        revNum = 0;
        sha256 = "963ce13489dbf5e3c64da4abf504cfba0364e416f27c2d91ffcf8ccfb83e25a5";
      };
      r1 = {
        nix = import ../hackage/colour-text-0.0.0.0-r1-682b2fdfa4d1ee03994f20dca7fe1a647a3589948340e0caf76abc05eee1df80.nix;
        revNum = 1;
        sha256 = "682b2fdfa4d1ee03994f20dca7fe1a647a3589948340e0caf76abc05eee1df80";
      };
      default = "r1";
    };
  };
  "0.0.0.1" = {
    sha256 = "3dd8a42e70548d9b2ec14bbb73ddf0dd479915c5d3945582436c2994dd422ed4";
    revisions = {
      r0 = {
        nix = import ../hackage/colour-text-0.0.0.1-r0-3ecf9d09231bb4dbc80d34dfd4dcddb558ac5e44e3a2b835edae1b198141b1a8.nix;
        revNum = 0;
        sha256 = "3ecf9d09231bb4dbc80d34dfd4dcddb558ac5e44e3a2b835edae1b198141b1a8";
      };
      default = "r0";
    };
  };
}