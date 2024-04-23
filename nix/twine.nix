{
  "0.1.1" = {
    sha256 = "3cceeb3cd0ae217d711fe4f217247efc8dacfe1f698383b8145ec84a1ec1e2a2";
    revisions = {
      r0 = {
        nix = import ../hackage/twine-0.1.1-r0-f0f1e45f72afee260cc5da2c73228fbff01c1627fa2092dd1c1c72edefbbfc0b.nix;
        revNum = 0;
        sha256 = "f0f1e45f72afee260cc5da2c73228fbff01c1627fa2092dd1c1c72edefbbfc0b";
      };
      default = "r0";
    };
  };
  "0.1.2" = {
    sha256 = "6171fe5eb172b8d2ba64006efbad98ed53b9bdc2191cd075b331f0d00dd48d60";
    revisions = {
      r0 = {
        nix = import ../hackage/twine-0.1.2-r0-d27344a8067e5244d7eb9f2bab13233db81d16959f71684faddbb6d72b15bb0b.nix;
        revNum = 0;
        sha256 = "d27344a8067e5244d7eb9f2bab13233db81d16959f71684faddbb6d72b15bb0b";
      };
      default = "r0";
    };
  };
}