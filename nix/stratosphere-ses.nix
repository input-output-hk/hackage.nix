{
  "1.0.0" = {
    sha256 = "d8b9f97ee2cf0fdb68b8a1fa27b015454a7075aee82566684145bf2f54fa5302";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-ses-1.0.0-r0-eb6bd783c236e54eacbb95e761edc27d090e258feaaf2d35189418700b809192.nix;
        revNum = 0;
        sha256 = "eb6bd783c236e54eacbb95e761edc27d090e258feaaf2d35189418700b809192";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "0e7b5201fad4dbed29b14139601264a544d9a83d4dc439e341c18c4c9cfb39f5";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-ses-1.0.1-r0-3236bdb9bf3a66f1497bdb6d942cda5b716e1f9074cadc399697c47696217798.nix;
        revNum = 0;
        sha256 = "3236bdb9bf3a66f1497bdb6d942cda5b716e1f9074cadc399697c47696217798";
      };
      default = "r0";
    };
  };
}