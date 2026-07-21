{
  "0.1.0.0" = {
    sha256 = "d8f53dac88ac828009f280669858a41a48c30365cc08ac1d8beb618677f3207b";
    revisions = {
      r0 = {
        nix = import ../hackage/settei-0.1.0.0-r0-e94dd62bd5e5cf280c2ea5a2282ff4b1174b80196c099ddeea037a92d3c20d01.nix;
        revNum = 0;
        sha256 = "e94dd62bd5e5cf280c2ea5a2282ff4b1174b80196c099ddeea037a92d3c20d01";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "8104267ed3cfc1141101badfa42cb0e0fd53f696af4c5ec493a0dd0e8dc192c6";
    revisions = {
      r0 = {
        nix = import ../hackage/settei-0.2.0.0-r0-49bda7d8ab42ce22df8980794e7b00c7ff7300345130912ddb6209006c2094ff.nix;
        revNum = 0;
        sha256 = "49bda7d8ab42ce22df8980794e7b00c7ff7300345130912ddb6209006c2094ff";
      };
      default = "r0";
    };
  };
}