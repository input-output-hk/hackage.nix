{
  "0.1.0.0" = {
    sha256 = "fa45dc7baa8c824ab628813ccaea342a5214eba58287ffad2fe10f1f89796d61";
    revisions = {
      r0 = {
        nix = import ../hackage/brush-strokes-0.1.0.0-r0-d94641a72058b20d1780b82ed0508b91836a5c07ef2a49e286179f00af097f67.nix;
        revNum = 0;
        sha256 = "d94641a72058b20d1780b82ed0508b91836a5c07ef2a49e286179f00af097f67";
      };
      r1 = {
        nix = import ../hackage/brush-strokes-0.1.0.0-r1-a5e8a288025f78aa90e105e65b9805370dc343038f5d3cafa92399dcb18ff6ea.nix;
        revNum = 1;
        sha256 = "a5e8a288025f78aa90e105e65b9805370dc343038f5d3cafa92399dcb18ff6ea";
      };
      default = "r1";
    };
  };
}