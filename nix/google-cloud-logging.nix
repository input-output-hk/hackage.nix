{
  "0.1.0.0" = {
    sha256 = "e3ebcd88f1faf11fa5c9d523bff22296ee355c0b96b53766c0182e3a358c5c7a";
    revisions = {
      r0 = {
        nix = import ../hackage/google-cloud-logging-0.1.0.0-r0-27d880fe1e92efe239056709e460ea404ea38daa749fe5be7364ea80047818f3.nix;
        revNum = 0;
        sha256 = "27d880fe1e92efe239056709e460ea404ea38daa749fe5be7364ea80047818f3";
      };
      default = "r0";
    };
  };
  "1.1.0.0" = {
    sha256 = "23be0242685892f8565d1443044cfe285eee601e9466b6025436a4a2f11f375b";
    revisions = {
      r0 = {
        nix = import ../hackage/google-cloud-logging-1.1.0.0-r0-6f94dd5ba52966c96425b49f166b5e41b14755cf5ffd53f739e2e0869693ac6c.nix;
        revNum = 0;
        sha256 = "6f94dd5ba52966c96425b49f166b5e41b14755cf5ffd53f739e2e0869693ac6c";
      };
      default = "r0";
    };
  };
}