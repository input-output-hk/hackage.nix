{
  "0.2" = {
    sha256 = "368661c3d6695d3f6e4f5ca1eb95dfbd2027016136c1631eac91fc7f74544eb3";
    revisions = {
      r0 = {
        nix = import ../hackage/binding-gtk-0.2-r0-cf6fead803ef92693f89a07502443b21026b88d40a4180f1c065e0a727c9bc4a.nix;
        revNum = 0;
        sha256 = "cf6fead803ef92693f89a07502443b21026b88d40a4180f1c065e0a727c9bc4a";
      };
      r1 = {
        nix = import ../hackage/binding-gtk-0.2-r1-90165a6cac7823043c35c863d875ce5aaa0e1f4f33bc3b29b0f34b2535563205.nix;
        revNum = 1;
        sha256 = "90165a6cac7823043c35c863d875ce5aaa0e1f4f33bc3b29b0f34b2535563205";
      };
      r2 = {
        nix = import ../hackage/binding-gtk-0.2-r2-7969dc33f71312e21552b6d95981f96530d020ec94a55d8231fb0b1fcd55d38c.nix;
        revNum = 2;
        sha256 = "7969dc33f71312e21552b6d95981f96530d020ec94a55d8231fb0b1fcd55d38c";
      };
      default = "r2";
    };
  };
  "0.2.1" = {
    sha256 = "799ff85197ac4038d6b14efba48a2960b1312dab898674d8c40ecec047b0c850";
    revisions = {
      r0 = {
        nix = import ../hackage/binding-gtk-0.2.1-r0-81eec10d37d7f3a3318d6768f123bec0d3c5040e84c771b43b3ae31eb46f96e5.nix;
        revNum = 0;
        sha256 = "81eec10d37d7f3a3318d6768f123bec0d3c5040e84c771b43b3ae31eb46f96e5";
      };
      r1 = {
        nix = import ../hackage/binding-gtk-0.2.1-r1-9e435774bd5d6a7d9dd1e96dd9293d6a739f7ecde23838571d30866ac4628cb5.nix;
        revNum = 1;
        sha256 = "9e435774bd5d6a7d9dd1e96dd9293d6a739f7ecde23838571d30866ac4628cb5";
      };
      r2 = {
        nix = import ../hackage/binding-gtk-0.2.1-r2-9ef198598bdc770dfff4d2f4b880fc314db546f14d779d3ac0809ff9d3bc91e5.nix;
        revNum = 2;
        sha256 = "9ef198598bdc770dfff4d2f4b880fc314db546f14d779d3ac0809ff9d3bc91e5";
      };
      default = "r2";
    };
  };
}