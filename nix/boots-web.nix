{
  "0.2" = {
    sha256 = "b2924e5083eb125460f14c7b4de7738803caee4efcd957fbcfb111f6ce2cc501";
    revisions = {
      r0 = {
        nix = import ../hackage/boots-web-0.2-r0-84fa9669e73b66c4a1f3444ba9594497384d2e772ca59975c13032b547be14dd.nix;
        revNum = 0;
        sha256 = "84fa9669e73b66c4a1f3444ba9594497384d2e772ca59975c13032b547be14dd";
      };
      r1 = {
        nix = import ../hackage/boots-web-0.2-r1-8e7a1873d459fda10945b7b5d6d57ba34727b4d852d921dc13279524241e08b5.nix;
        revNum = 1;
        sha256 = "8e7a1873d459fda10945b7b5d6d57ba34727b4d852d921dc13279524241e08b5";
      };
      default = "r1";
    };
  };
  "0.2.0.1" = {
    sha256 = "2874fc11816a6a15f097eeecb127c65db4346a7b240dfd49863f2708dfa2feb3";
    revisions = {
      r0 = {
        nix = import ../hackage/boots-web-0.2.0.1-r0-f850e710d186559e31ee0eb0c22b58b57bd82a4a87903d913daaeece27f2abb1.nix;
        revNum = 0;
        sha256 = "f850e710d186559e31ee0eb0c22b58b57bd82a4a87903d913daaeece27f2abb1";
      };
      default = "r0";
    };
  };
}