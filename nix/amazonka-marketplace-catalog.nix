{
  "2.0" = {
    sha256 = "28fbb3803c0bc78e22a57a152e324fae0ce65f54795a2f4588342f2d33982b6f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-marketplace-catalog-2.0-r0-1dbf1a435fa072839e3613ddf1cf04cd2fbb9a76a9654907a7a2991c4961fc35.nix;
        revNum = 0;
        sha256 = "1dbf1a435fa072839e3613ddf1cf04cd2fbb9a76a9654907a7a2991c4961fc35";
      };
      r1 = {
        nix = import ../hackage/amazonka-marketplace-catalog-2.0-r1-344140f2134f63e70dd0f87e9e425cbbdf85b0aa390bb37c5eeeaaa025363374.nix;
        revNum = 1;
        sha256 = "344140f2134f63e70dd0f87e9e425cbbdf85b0aa390bb37c5eeeaaa025363374";
      };
      default = "r1";
    };
  };
}