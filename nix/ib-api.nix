{
  "0.1.0.0" = {
    sha256 = "651a04b3b7261e1d24a68f57365a81d6ddfb6da5159f24fce8a5fb0a925c6080";
    revisions = {
      r0 = {
        nix = import ../hackage/ib-api-0.1.0.0-r0-24620a75e69df61bcdbdb3a7f71c30c3c8ce7139e57a42755edc58c01ddd3238.nix;
        revNum = 0;
        sha256 = "24620a75e69df61bcdbdb3a7f71c30c3c8ce7139e57a42755edc58c01ddd3238";
        };
      r1 = {
        nix = import ../hackage/ib-api-0.1.0.0-r1-7cb1fe96767e6253ef55d4997404eb3f4048f1b9bfccfb9e6cca627a734c3bcd.nix;
        revNum = 1;
        sha256 = "7cb1fe96767e6253ef55d4997404eb3f4048f1b9bfccfb9e6cca627a734c3bcd";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "336bb043a50a68001635ffb03d2c175e92b7a7d05393b098ffa8ae5dcfd25c7f";
    revisions = {
      r0 = {
        nix = import ../hackage/ib-api-0.1.0.1-r0-f6123c1eef9c45217302702c7bc970c758138b44b56d5c8869f1321efb22e992.nix;
        revNum = 0;
        sha256 = "f6123c1eef9c45217302702c7bc970c758138b44b56d5c8869f1321efb22e992";
        };
      default = "r0";
      };
    };
  }