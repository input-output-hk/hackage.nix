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
  "0.1.3" = {
    sha256 = "350869453140c9957ee4bace09eaf9037c78877f061f051d349d51a0078835bf";
    revisions = {
      r0 = {
        nix = import ../hackage/hsmrc-0.1.3-r0-008ec55d28c2e90886f379e2979aeb0ed23e54989a9e9362fffff8ce14d44df8.nix;
        revNum = 0;
        sha256 = "008ec55d28c2e90886f379e2979aeb0ed23e54989a9e9362fffff8ce14d44df8";
      };
      r1 = {
        nix = import ../hackage/hsmrc-0.1.3-r1-8aa2aec55981db453efda65cb25cdcdd7800b3b9687e85a7a52b61461726c1c6.nix;
        revNum = 1;
        sha256 = "8aa2aec55981db453efda65cb25cdcdd7800b3b9687e85a7a52b61461726c1c6";
      };
      default = "r1";
    };
  };
}