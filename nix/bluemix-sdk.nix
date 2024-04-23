{
  "0.1.0.0" = {
    sha256 = "b2e941e5e7a64b95edda1851fb5c082b81ed4e2897e8c8a2d07b926f7835fd48";
    revisions = {
      r0 = {
        nix = import ../hackage/bluemix-sdk-0.1.0.0-r0-3aa77e6ca024fdd85ac3798bc93220cffbcdb99cf570bbac9ac844d915718177.nix;
        revNum = 0;
        sha256 = "3aa77e6ca024fdd85ac3798bc93220cffbcdb99cf570bbac9ac844d915718177";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "59a0bd8ff04e7633c28b6deaf4ac59266de351f71baca82a483e84c6cf945752";
    revisions = {
      r0 = {
        nix = import ../hackage/bluemix-sdk-0.1.1.0-r0-2f6a398cd72515379fa83f2774cf31ba3fb270d8d733ae1703056a8dc83a57c9.nix;
        revNum = 0;
        sha256 = "2f6a398cd72515379fa83f2774cf31ba3fb270d8d733ae1703056a8dc83a57c9";
      };
      default = "r0";
    };
  };
}