{
  "1.3.0.0" = {
    sha256 = "cd3494ddfa544a0d51fd6c4bff558ccd316fe200cafa4b1d5fea75fc08e5e3e1";
    revisions = {
      r0 = {
        nix = import ../hackage/nostr-1.3.0.0-r0-6bd7462376199d2c73a56cf1863c71fd06f6410a371aa59f96c1591c2b7bb12f.nix;
        revNum = 0;
        sha256 = "6bd7462376199d2c73a56cf1863c71fd06f6410a371aa59f96c1591c2b7bb12f";
      };
      default = "r0";
    };
  };
  "1.3.1.0" = {
    sha256 = "47e52eead6281d6d2f7c364755b19efcd66d816808177876a1fd4ea149ea6023";
    revisions = {
      r0 = {
        nix = import ../hackage/nostr-1.3.1.0-r0-e7580aaf9b2153a824986b5f8d25e9fc389b2c1f3bc611bb6c2a207e6306f76f.nix;
        revNum = 0;
        sha256 = "e7580aaf9b2153a824986b5f8d25e9fc389b2c1f3bc611bb6c2a207e6306f76f";
      };
      default = "r0";
    };
  };
}