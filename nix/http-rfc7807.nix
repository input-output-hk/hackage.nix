{
  "0.1.0.0" = {
    sha256 = "2453f4ba4dd53f1e9921dd698899587e7fcc60348bde74cf72e1799747c4daf3";
    revisions = {
      r0 = {
        nix = import ../hackage/http-rfc7807-0.1.0.0-r0-6fbfe86ed656c395d756e7d4e61ae23ac141872a6268cd98ddad71718d989c77.nix;
        revNum = 0;
        sha256 = "6fbfe86ed656c395d756e7d4e61ae23ac141872a6268cd98ddad71718d989c77";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "9bfba5abdbbd5a132352e7c10f3e61d3637bfbe97a7fa444555878a9cff80d5a";
    revisions = {
      r0 = {
        nix = import ../hackage/http-rfc7807-0.2.0.0-r0-79ac177aaf32e60c33f12adc796c7965a10fd8eaf9eb92ac9fa9430113a1356f.nix;
        revNum = 0;
        sha256 = "79ac177aaf32e60c33f12adc796c7965a10fd8eaf9eb92ac9fa9430113a1356f";
      };
      default = "r0";
    };
  };
}