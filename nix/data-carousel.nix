{
  "0.1.0.0" = {
    sha256 = "505ba1c890aacf7b91745c64de05e5d8ca5d28154265e1c723fc0a850439e1ee";
    revisions = {
      r0 = {
        nix = import ../hackage/data-carousel-0.1.0.0-r0-3fa63a9b13b9aa57f98e0e773a887ade8212d1229079e5241f4889c16ed7b62e.nix;
        revNum = 0;
        sha256 = "3fa63a9b13b9aa57f98e0e773a887ade8212d1229079e5241f4889c16ed7b62e";
        };
      r1 = {
        nix = import ../hackage/data-carousel-0.1.0.0-r1-56aa17d4ad0390625d0694ff6f8e281720d96bdabc678cc10934ac9becc663ea.nix;
        revNum = 1;
        sha256 = "56aa17d4ad0390625d0694ff6f8e281720d96bdabc678cc10934ac9becc663ea";
        };
      default = "r1";
      };
    };
  }