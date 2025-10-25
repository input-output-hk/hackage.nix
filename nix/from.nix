{
  "1.0.0.0" = {
    sha256 = "e2d1aac75012de24ba2a3dc9d1af39993e842507a231263823b848ee55409fb3";
    revisions = {
      r0 = {
        nix = import ../hackage/from-1.0.0.0-r0-49feb6173d2049c340ad15c671859919decba7b77f395295652680d53de76a4a.nix;
        revNum = 0;
        sha256 = "49feb6173d2049c340ad15c671859919decba7b77f395295652680d53de76a4a";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "82ddcd12dadac0d64587adc101351c34149a830ec59fb530b876baf46038e1b9";
    revisions = {
      r0 = {
        nix = import ../hackage/from-1.0.0.1-r0-ff53dbec684d26a673bbc1ac0f376dbb78bac5235a3aa9cf86d00f15daf82573.nix;
        revNum = 0;
        sha256 = "ff53dbec684d26a673bbc1ac0f376dbb78bac5235a3aa9cf86d00f15daf82573";
      };
      default = "r0";
    };
  };
}