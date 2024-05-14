{
  "2.0" = {
    sha256 = "0e3b89ea4c17f2d2321f0bf9ac023bd61fe03dd3088f4bcc57dcbc2a50dbb800";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-devops-guru-2.0-r0-9772bcd13c8e035d79aea3641521e1c6f1d3064c0b6aaee70f7cc6d59458cbd6.nix;
        revNum = 0;
        sha256 = "9772bcd13c8e035d79aea3641521e1c6f1d3064c0b6aaee70f7cc6d59458cbd6";
      };
      r1 = {
        nix = import ../hackage/amazonka-devops-guru-2.0-r1-db05b182aa09719f480fdc9e08adef620e3ae2359829fa9d1bcaddc514145080.nix;
        revNum = 1;
        sha256 = "db05b182aa09719f480fdc9e08adef620e3ae2359829fa9d1bcaddc514145080";
      };
      default = "r1";
    };
  };
}