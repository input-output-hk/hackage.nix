{
  "0.1" = {
    sha256 = "2d2536405869b390a2d9940211af29099892f20f4c8f07afb8c6b2bf60286bb8";
    revisions = {
      r0 = {
        nix = import ../hackage/vector-random-0.1-r0-0209938869ce27f6f29a4d9c692ec584b8d17d1d4f49187d8ba7f5e3ed3bc9c6.nix;
        revNum = 0;
        sha256 = "0209938869ce27f6f29a4d9c692ec584b8d17d1d4f49187d8ba7f5e3ed3bc9c6";
        };
      default = "r0";
      };
    };
  "0.2" = {
    sha256 = "6bb735a7bf2c81ac75029499bc160d22f4a2a721ab6bf23ae26cd5a217c1e4b8";
    revisions = {
      r0 = {
        nix = import ../hackage/vector-random-0.2-r0-1293c07478e4dbd354b06b1cc1a32e0578e8ec717ac84e9399b56fdd43b77f32.nix;
        revNum = 0;
        sha256 = "1293c07478e4dbd354b06b1cc1a32e0578e8ec717ac84e9399b56fdd43b77f32";
        };
      r1 = {
        nix = import ../hackage/vector-random-0.2-r1-44ab0e38c63b3339dfd1b69b38b37ea7ac2f1ef063d062d425ad0cc89144f456.nix;
        revNum = 1;
        sha256 = "44ab0e38c63b3339dfd1b69b38b37ea7ac2f1ef063d062d425ad0cc89144f456";
        };
      r2 = {
        nix = import ../hackage/vector-random-0.2-r2-de331a5826345df371a52a3b130f1f608611f564dee5e82a4cb561482e4d447b.nix;
        revNum = 2;
        sha256 = "de331a5826345df371a52a3b130f1f608611f564dee5e82a4cb561482e4d447b";
        };
      default = "r2";
      };
    };
  }