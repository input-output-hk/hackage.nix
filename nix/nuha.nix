{
  "0.2.0.0" = {
    sha256 = "f18d6f4fc1c5d9417bbc88f155fc97f813cb491377c041fb90544c84edc99df5";
    revisions = {
      r0 = {
        nix = import ../hackage/nuha-0.2.0.0-r0-ce251fffc87faf89927e6cd31169f48f2a514bfeac73c573273122ceeb51e5f6.nix;
        revNum = 0;
        sha256 = "ce251fffc87faf89927e6cd31169f48f2a514bfeac73c573273122ceeb51e5f6";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "2de4c2259636635d14ddd4fba07d1f6b15ceb41ce0deb7049edf90205f0a8b96";
    revisions = {
      r0 = {
        nix = import ../hackage/nuha-0.3.0.0-r0-9a2ee055d246701c744c99fc665bb6911a15d1786e9c98125a9df95e6fea1e63.nix;
        revNum = 0;
        sha256 = "9a2ee055d246701c744c99fc665bb6911a15d1786e9c98125a9df95e6fea1e63";
      };
      default = "r0";
    };
  };
}