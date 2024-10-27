{
  "0.0.0.0" = {
    sha256 = "bcd3164cec4ecd73769067117f4beda6b7e6ba54d234356fd07549a50329c10e";
    revisions = {
      r0 = {
        nix = import ../hackage/jsaddle-wasm-0.0.0.0-r0-131e07b448775e1d1ff7754837e6736b0db5fa04c5d624690468b4634311b411.nix;
        revNum = 0;
        sha256 = "131e07b448775e1d1ff7754837e6736b0db5fa04c5d624690468b4634311b411";
      };
      default = "r0";
    };
  };
  "0.0.1.0" = {
    sha256 = "5a3c0dae3d2ea0a4dfd8932bcc111fee3dd81ad92e2d08144e82f8c1ad5060b3";
    revisions = {
      r0 = {
        nix = import ../hackage/jsaddle-wasm-0.0.1.0-r0-f599ec5e08c661f1aac7a83f38eb77f77da8a73451318f8f011a0b100c2d4bdf.nix;
        revNum = 0;
        sha256 = "f599ec5e08c661f1aac7a83f38eb77f77da8a73451318f8f011a0b100c2d4bdf";
      };
      default = "r0";
    };
  };
}