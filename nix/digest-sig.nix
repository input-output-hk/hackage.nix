{
  "0.1.0.0" = {
    sha256 = "09bea9d5578aff34d8b489a3f82f460614d677040d8d57240541afe4e12a05a9";
    revisions = {
      r0 = {
        nix = import ../hackage/digest-sig-0.1.0.0-r0-15c8105a8770e95338d64ab9002b72872f8e9ab6fa79140944dd000bd2b5b182.nix;
        revNum = 0;
        sha256 = "15c8105a8770e95338d64ab9002b72872f8e9ab6fa79140944dd000bd2b5b182";
      };
      r1 = {
        nix = import ../hackage/digest-sig-0.1.0.0-r1-6e4be55cee657a50d34c246b0d7aa775131389495f52887d46a8400d693794a2.nix;
        revNum = 1;
        sha256 = "6e4be55cee657a50d34c246b0d7aa775131389495f52887d46a8400d693794a2";
      };
      default = "r1";
    };
  };
}