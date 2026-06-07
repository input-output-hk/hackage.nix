{
  "1.0.0.0" = {
    sha256 = "f2fbefcac272583d9713e8a016a8eef4d0b867187b21ae2cc33aca8a355adc42";
    revisions = {
      r0 = {
        nix = import ../hackage/dataframe-th-1.0.0.0-r0-9f6c7cb230072e8ad389ebbbc2975f74291a15b5365c255be722a714e8ed6bad.nix;
        revNum = 0;
        sha256 = "9f6c7cb230072e8ad389ebbbc2975f74291a15b5365c255be722a714e8ed6bad";
      };
      default = "r0";
    };
  };
  "1.0.1.0" = {
    sha256 = "3c4d3408c2c6f6f7955fd409dcf96fb750a3a46f9a4fe6a6e05108a380db9b7c";
    revisions = {
      r0 = {
        nix = import ../hackage/dataframe-th-1.0.1.0-r0-bb182a0084475dbb9f9671fcda0b5bbd0507709c7a1c942718952897ca27fe36.nix;
        revNum = 0;
        sha256 = "bb182a0084475dbb9f9671fcda0b5bbd0507709c7a1c942718952897ca27fe36";
      };
      r1 = {
        nix = import ../hackage/dataframe-th-1.0.1.0-r1-a05580bfe41af328dd6f7fb6fd5300e9ccc8711e5783023cefb84ad5b8df63d2.nix;
        revNum = 1;
        sha256 = "a05580bfe41af328dd6f7fb6fd5300e9ccc8711e5783023cefb84ad5b8df63d2";
      };
      default = "r1";
    };
  };
}