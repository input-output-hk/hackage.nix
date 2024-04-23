{
  "0.1.0.0" = {
    sha256 = "f12bd8074ac9dc7ee32593ab9b45b7af15d69ad5c2e3de2885bde4413281ba68";
    revisions = {
      r0 = {
        nix = import ../hackage/lambda-cube-0.1.0.0-r0-a11097c6aca44cbfde2ed370819cd1fcdb68c261601fcb53557994fcb099b094.nix;
        revNum = 0;
        sha256 = "a11097c6aca44cbfde2ed370819cd1fcdb68c261601fcb53557994fcb099b094";
      };
      r1 = {
        nix = import ../hackage/lambda-cube-0.1.0.0-r1-2b3e9fa85897d04529c010efd24ee36e5d4916a14e304eb8bf078efb2673ce83.nix;
        revNum = 1;
        sha256 = "2b3e9fa85897d04529c010efd24ee36e5d4916a14e304eb8bf078efb2673ce83";
      };
      r2 = {
        nix = import ../hackage/lambda-cube-0.1.0.0-r2-3982f6574741b81d131bee2db2237ff7e1f623125742ab6d1c2481b330bb2b7f.nix;
        revNum = 2;
        sha256 = "3982f6574741b81d131bee2db2237ff7e1f623125742ab6d1c2481b330bb2b7f";
      };
      r3 = {
        nix = import ../hackage/lambda-cube-0.1.0.0-r3-c041f1cf761b50c6f1c30d38ef6334f0d84dacd2a67189095ffa839724718a79.nix;
        revNum = 3;
        sha256 = "c041f1cf761b50c6f1c30d38ef6334f0d84dacd2a67189095ffa839724718a79";
      };
      default = "r3";
    };
  };
  "0.2.0.0" = {
    sha256 = "a8c843223dd9c67aec39fa3ec0f496e5dc41859f99002c3c8cf9e85225b49880";
    revisions = {
      r0 = {
        nix = import ../hackage/lambda-cube-0.2.0.0-r0-39c2afcca88f5e481ec8be0279b0a533e313a363ef868da8cda2a580a33ac5e9.nix;
        revNum = 0;
        sha256 = "39c2afcca88f5e481ec8be0279b0a533e313a363ef868da8cda2a580a33ac5e9";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "44098d7ed0555b6f775b40c5481ff7b7f12b17f73c168e7d10441e54f74d9c54";
    revisions = {
      r0 = {
        nix = import ../hackage/lambda-cube-0.3.0.0-r0-a5c36e481214dc0a68599b20730289139bce80f4b0e8ce807fcfe67254e1eb0f.nix;
        revNum = 0;
        sha256 = "a5c36e481214dc0a68599b20730289139bce80f4b0e8ce807fcfe67254e1eb0f";
      };
      default = "r0";
    };
  };
}