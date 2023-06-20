{
  "0.31" = {
    sha256 = "9a02513b2168c746d6ed5a09bd62a796b48915951ac808b65fef30b9edc94aee";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-0.31-r0-c0e4aa081bd65d1cb415358ec43e83e7fe703c83b633243a89162bd6eb865850.nix;
        revNum = 0;
        sha256 = "c0e4aa081bd65d1cb415358ec43e83e7fe703c83b633243a89162bd6eb865850";
        };
      default = "r0";
      };
    };
  "0.32" = {
    sha256 = "544890fd375a748f908037ed91af69316d413ec3952281e21bb0529b3b45208c";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-0.32-r0-6f09f7d43a06ed6e12e1420e60a531179d5c703bf43fa768900ea49dc4bf0275.nix;
        revNum = 0;
        sha256 = "6f09f7d43a06ed6e12e1420e60a531179d5c703bf43fa768900ea49dc4bf0275";
        };
      default = "r0";
      };
    };
  }