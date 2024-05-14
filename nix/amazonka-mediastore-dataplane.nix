{
  "1.6.0" = {
    sha256 = "15c03c39f4844949e382b415e5383115b71a3bc6d9ebfbff8ba50edd890cb3d1";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mediastore-dataplane-1.6.0-r0-84e28c536caf950906ae8096b06535fe8f138694fd3a13a9114216b9425de7af.nix;
        revNum = 0;
        sha256 = "84e28c536caf950906ae8096b06535fe8f138694fd3a13a9114216b9425de7af";
      };
      r1 = {
        nix = import ../hackage/amazonka-mediastore-dataplane-1.6.0-r1-ea40824eebe9c942c5ddff9f751addb5b38470ac6f31d513d42732638bafb0b4.nix;
        revNum = 1;
        sha256 = "ea40824eebe9c942c5ddff9f751addb5b38470ac6f31d513d42732638bafb0b4";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "78ac8c6e007f0921c83b4066bad75650525e7ef7c45c3c7a113d287cc91fa7e9";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mediastore-dataplane-1.6.1-r0-f7227f52b70f15ef8b975f3a60ecbb8870edf3df5677838c1fca897697fd5edc.nix;
        revNum = 0;
        sha256 = "f7227f52b70f15ef8b975f3a60ecbb8870edf3df5677838c1fca897697fd5edc";
      };
      r1 = {
        nix = import ../hackage/amazonka-mediastore-dataplane-1.6.1-r1-56fb60e7d7509beb12602640aa72b7ba3765293e37a36ec4e6b41c49d712ea12.nix;
        revNum = 1;
        sha256 = "56fb60e7d7509beb12602640aa72b7ba3765293e37a36ec4e6b41c49d712ea12";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "6ef6eb892f875f5555a31824f199c4b35090aeec1f821c6229819b89f15aac6f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mediastore-dataplane-2.0-r0-82cce5dc26e5b2651131ba6cfe05e2327f7651b8759afb464a40ac4488aa2619.nix;
        revNum = 0;
        sha256 = "82cce5dc26e5b2651131ba6cfe05e2327f7651b8759afb464a40ac4488aa2619";
      };
      r1 = {
        nix = import ../hackage/amazonka-mediastore-dataplane-2.0-r1-cfcd011b9256d108e1e5179b4c4cd98ef2b7dec9068c38c7255008f814ff5630.nix;
        revNum = 1;
        sha256 = "cfcd011b9256d108e1e5179b4c4cd98ef2b7dec9068c38c7255008f814ff5630";
      };
      default = "r1";
    };
  };
}