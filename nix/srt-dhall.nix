{
  "0.1.0.0" = {
    sha256 = "d7830a370e5a39a5b7e53e1abf7254fa5f346773432092dfd012b4b470eccf9b";
    revisions = {
      r0 = {
        nix = import ../hackage/srt-dhall-0.1.0.0-r0-e7904022c10f3a82fa56af3a7ad1a3a1fd033285ae6b9b1ef45cb42244f2f85d.nix;
        revNum = 0;
        sha256 = "e7904022c10f3a82fa56af3a7ad1a3a1fd033285ae6b9b1ef45cb42244f2f85d";
        };
      r1 = {
        nix = import ../hackage/srt-dhall-0.1.0.0-r1-0e79eae95b4982d0c268c9bdc1094bdeba10c471dca630b7464769586b313d78.nix;
        revNum = 1;
        sha256 = "0e79eae95b4982d0c268c9bdc1094bdeba10c471dca630b7464769586b313d78";
        };
      default = "r1";
      };
    };
  }