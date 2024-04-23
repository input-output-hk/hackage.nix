{
  "1.0.0" = {
    sha256 = "2ccaff1a41dbaf3093a3dc29166aeabbc759ec5211058a74fcb6ae0fedf0b8b2";
    revisions = {
      r0 = {
        nix = import ../hackage/wordsearch-1.0.0-r0-cc2b20a65921f8dc79612ef5875e49ea090106981b656c23fe0987e963f515f0.nix;
        revNum = 0;
        sha256 = "cc2b20a65921f8dc79612ef5875e49ea090106981b656c23fe0987e963f515f0";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "a2931d01f6197c7c3164001dec4ec0281a9b057f3728ad12a333f6327854014b";
    revisions = {
      r0 = {
        nix = import ../hackage/wordsearch-1.0.1-r0-1d38fcb19b8b22fa941f01bbcedd6886cd7f7e241e0171ed05d007e86976e28b.nix;
        revNum = 0;
        sha256 = "1d38fcb19b8b22fa941f01bbcedd6886cd7f7e241e0171ed05d007e86976e28b";
      };
      default = "r0";
    };
  };
}