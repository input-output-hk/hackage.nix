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
  "1.0.1" = {
    sha256 = "65493e87a9604a18addeae4b074e7e243356db4a9f613a37cb4e8f322a3649f1";
    revisions = {
      r0 = {
        nix = import ../hackage/servant-effectful-1.0.1-r0-b0ad743024fb07f77e7c8e8df6f4343510d5342f37efcfc4ebb1966f1796f544.nix;
        revNum = 0;
        sha256 = "b0ad743024fb07f77e7c8e8df6f4343510d5342f37efcfc4ebb1966f1796f544";
      };
      default = "r0";
    };
  };
}