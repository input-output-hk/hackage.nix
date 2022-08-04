{
  "0.0.0.1" = {
    sha256 = "3c55e3de17b1cc41b4f2e0a3ea184b57a3e8c7be6d7c1eb0176aa538a29de292";
    revisions = {
      r0 = {
        nix = import ../hackage/quiver-http-0.0.0.1-r0-2249637b6a84d4b4b71590b1ab66cb18643b7b49cb48678107137bfa218189fa.nix;
        revNum = 0;
        sha256 = "2249637b6a84d4b4b71590b1ab66cb18643b7b49cb48678107137bfa218189fa";
        };
      r1 = {
        nix = import ../hackage/quiver-http-0.0.0.1-r1-9c606f97bbd6d72acf6d148dcb9fab7e366d2c4614a63468dffaa6ec525e9f69.nix;
        revNum = 1;
        sha256 = "9c606f97bbd6d72acf6d148dcb9fab7e366d2c4614a63468dffaa6ec525e9f69";
        };
      default = "r1";
      };
    };
  "0.0.0.2" = {
    sha256 = "e221dbbe65a0b4509e7efbd1e70383575175932e16b28d0cbeaa2165b7a5dfe0";
    revisions = {
      r0 = {
        nix = import ../hackage/quiver-http-0.0.0.2-r0-566e0f26acb9b74ef4f577f7567b12d10ec50641c07634d7c8b20821ecb7e58a.nix;
        revNum = 0;
        sha256 = "566e0f26acb9b74ef4f577f7567b12d10ec50641c07634d7c8b20821ecb7e58a";
        };
      r1 = {
        nix = import ../hackage/quiver-http-0.0.0.2-r1-ca7fe920bd4fd519db582ca6fcfdc82f5e62563df3e29827f523acf423f43380.nix;
        revNum = 1;
        sha256 = "ca7fe920bd4fd519db582ca6fcfdc82f5e62563df3e29827f523acf423f43380";
        };
      r2 = {
        nix = import ../hackage/quiver-http-0.0.0.2-r2-25c3ec8b9fe27ef80eb8b2c2918676437a7c79b4504e419c319593262c61b3e1.nix;
        revNum = 2;
        sha256 = "25c3ec8b9fe27ef80eb8b2c2918676437a7c79b4504e419c319593262c61b3e1";
        };
      default = "r2";
      };
    };
  }