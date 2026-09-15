{
  "1.0.0" = {
    sha256 = "154b7f66f9d7fac59ac793ce295c3a30e1d86676903599ff7bc8c61c68659e86";
    revisions = {
      r0 = {
        nix = import ../hackage/servant-effectful-1.0.0-r0-ae4f16d1e5b3177574b0f49d3710167d8f2b2152d56f61d3a1fd76ebdf621220.nix;
        revNum = 0;
        sha256 = "ae4f16d1e5b3177574b0f49d3710167d8f2b2152d56f61d3a1fd76ebdf621220";
      };
      r1 = {
        nix = import ../hackage/servant-effectful-1.0.0-r1-12af0bb6fd9e425ead43c7df09215120ebc7cd6b285c5b5e0e5433c602b47239.nix;
        revNum = 1;
        sha256 = "12af0bb6fd9e425ead43c7df09215120ebc7cd6b285c5b5e0e5433c602b47239";
      };
      default = "r1";
    };
  };
}