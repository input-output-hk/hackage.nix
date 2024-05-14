{
  "1.6.0" = {
    sha256 = "208401b29c4f4df3a717e230ff646075ba7c58df3ea262b8373ba621bee7358a";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-secretsmanager-1.6.0-r0-deb8e353cdeddb7364472ac13df0cb8b1f7bacbf54eec6b8fc9db4594b92b0d0.nix;
        revNum = 0;
        sha256 = "deb8e353cdeddb7364472ac13df0cb8b1f7bacbf54eec6b8fc9db4594b92b0d0";
      };
      r1 = {
        nix = import ../hackage/amazonka-secretsmanager-1.6.0-r1-db42b68d74b8c2eec4ddfa47febbf1bb9348f2d96049594bad79f1c7e8a3cb3f.nix;
        revNum = 1;
        sha256 = "db42b68d74b8c2eec4ddfa47febbf1bb9348f2d96049594bad79f1c7e8a3cb3f";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "1429c7f0e93d812042aee7189b23644eda0b608ef698792387362cd93fb5237f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-secretsmanager-1.6.1-r0-f3e7266e8b19b214c721c49c50d24b7a6cc1ed280a1e481eabf08dc507e38f5d.nix;
        revNum = 0;
        sha256 = "f3e7266e8b19b214c721c49c50d24b7a6cc1ed280a1e481eabf08dc507e38f5d";
      };
      r1 = {
        nix = import ../hackage/amazonka-secretsmanager-1.6.1-r1-e5d64ae0fe980b06e056d7b5dbabfac0cc8f41a722b7cf052569abc821750d1e.nix;
        revNum = 1;
        sha256 = "e5d64ae0fe980b06e056d7b5dbabfac0cc8f41a722b7cf052569abc821750d1e";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "f0795a8fe667f9e5c581165038576e2a41ca3c97d39d03041e1c07344959cdf2";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-secretsmanager-2.0-r0-de4b8b2e1d5d0743dda1eb85c8be96897ab6ccf5aa62494d2d6318d869a49d42.nix;
        revNum = 0;
        sha256 = "de4b8b2e1d5d0743dda1eb85c8be96897ab6ccf5aa62494d2d6318d869a49d42";
      };
      r1 = {
        nix = import ../hackage/amazonka-secretsmanager-2.0-r1-7acae6ff2ba0a4149f0168bf5df0c962e5e289ee24c9405ebeb1e2bb8d80cbb6.nix;
        revNum = 1;
        sha256 = "7acae6ff2ba0a4149f0168bf5df0c962e5e289ee24c9405ebeb1e2bb8d80cbb6";
      };
      default = "r1";
    };
  };
}