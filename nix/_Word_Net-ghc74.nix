{
  "0.1.2" = {
    sha256 = "21d9a2210358b6389df97e9e57e36917b1a229178eb4c157533a330bb18b63f7";
    revisions = {
      r0 = {
        nix = import ../hackage/WordNet-ghc74-0.1.2-r0-94cdcb7634a20569956109130681295d889cb81dce1c4209ad4a00dee5857799.nix;
        revNum = 0;
        sha256 = "94cdcb7634a20569956109130681295d889cb81dce1c4209ad4a00dee5857799";
      };
      r1 = {
        nix = import ../hackage/WordNet-ghc74-0.1.2-r1-d805af5f64f63c122a18bccf9380386f52a023132a8388f7d3ae7d8b606ce5d0.nix;
        revNum = 1;
        sha256 = "d805af5f64f63c122a18bccf9380386f52a023132a8388f7d3ae7d8b606ce5d0";
      };
      default = "r1";
    };
  };
  "0.1.3" = {
    sha256 = "2867dc9c3a3c47f349137ee251d91aa0610ddb1f0fd89610766d28ae96e765a9";
    revisions = {
      r0 = {
        nix = import ../hackage/WordNet-ghc74-0.1.3-r0-b394847a92314160bf137afade7b689f018b82751b6a97c796c2cbe1d1d74ad1.nix;
        revNum = 0;
        sha256 = "b394847a92314160bf137afade7b689f018b82751b6a97c796c2cbe1d1d74ad1";
      };
      r1 = {
        nix = import ../hackage/WordNet-ghc74-0.1.3-r1-e3521acf8dc754305a4b967aeed68edec3e41adba4cd29c79f7cf76f7617bdf1.nix;
        revNum = 1;
        sha256 = "e3521acf8dc754305a4b967aeed68edec3e41adba4cd29c79f7cf76f7617bdf1";
      };
      default = "r1";
    };
  };
}