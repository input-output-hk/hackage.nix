{
  "0.1.0.0" = {
    sha256 = "ba7d29c8951575626a6e8c2a3e6ead807ea5e1d2fb4d5d6dcdf2307655188fd8";
    revisions = {
      r0 = {
        nix = import ../hackage/chromatin-0.1.0.0-r0-341043dad5cc401d071edbcd0b9cc6c4aa416fa1324409c328e18bd973b079c5.nix;
        revNum = 0;
        sha256 = "341043dad5cc401d071edbcd0b9cc6c4aa416fa1324409c328e18bd973b079c5";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "18c5427b866de6c4d7f135090cba05a98715aecb20dcebabf6c41148b5556495";
    revisions = {
      r0 = {
        nix = import ../hackage/chromatin-0.1.1.0-r0-1d7153712381bd5f2d4b2a80263ffd00b08568a7a6e4bd5ccfc7fefded8bff9d.nix;
        revNum = 0;
        sha256 = "1d7153712381bd5f2d4b2a80263ffd00b08568a7a6e4bd5ccfc7fefded8bff9d";
      };
      default = "r0";
    };
  };
}