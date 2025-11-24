{
  "0.1.1" = {
    sha256 = "dbad34b01aff25e36b19990c3a28e639510ce66f8661c55f22203f44416ebe87";
    revisions = {
      r0 = {
        nix = import ../hackage/hsmrc-0.1.1-r0-388d9008b94575150d8a68b02ec4ecddb44130b2a9e625be1606d546632a1ee0.nix;
        revNum = 0;
        sha256 = "388d9008b94575150d8a68b02ec4ecddb44130b2a9e625be1606d546632a1ee0";
      };
      r1 = {
        nix = import ../hackage/hsmrc-0.1.1-r1-e48416b7b7888f63e01a5fea87c5182497b175a89545e1c930bd725af84ae3a2.nix;
        revNum = 1;
        sha256 = "e48416b7b7888f63e01a5fea87c5182497b175a89545e1c930bd725af84ae3a2";
      };
      default = "r1";
    };
  };
}