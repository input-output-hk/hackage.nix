{
  "1.7" = {
    sha256 = "08fb54512457b41d7afa707f0cfe115df3d7935f6a6919325fd52c9edc2ac2b5";
    revisions = {
      r0 = {
        nix = import ../hackage/hsql-mysql-1.7-r0-1024de3e7e5ca03686f2128898a68073fbf8d1d83218483351b1a7dc88d557d0.nix;
        revNum = 0;
        sha256 = "1024de3e7e5ca03686f2128898a68073fbf8d1d83218483351b1a7dc88d557d0";
      };
      default = "r0";
    };
  };
  "1.7.1" = {
    sha256 = "71d080cfce3f9b820127abfa7895ea1fccf9d7812c79fe51767445e77a962c4e";
    revisions = {
      r0 = {
        nix = import ../hackage/hsql-mysql-1.7.1-r0-4b6869123f2f7be527b1e774768d890b385d943a84b9a666e8d6724002e8612c.nix;
        revNum = 0;
        sha256 = "4b6869123f2f7be527b1e774768d890b385d943a84b9a666e8d6724002e8612c";
      };
      default = "r0";
    };
  };
  "1.8.1" = {
    sha256 = "db9ad16785c81d58b793433ec62b7b2c4f00cb3287b19c53c64b4c724f310ee1";
    revisions = {
      r0 = {
        nix = import ../hackage/hsql-mysql-1.8.1-r0-43c8795ee0a1e4003c299eba88441437693f1d7f2c6e8fe35ea3d63f4ef488bc.nix;
        revNum = 0;
        sha256 = "43c8795ee0a1e4003c299eba88441437693f1d7f2c6e8fe35ea3d63f4ef488bc";
      };
      default = "r0";
    };
  };
  "1.8.2" = {
    sha256 = "780bc5388838482857083746eeeb3bfd3d498e82722d29d834fb1b1427533025";
    revisions = {
      r0 = {
        nix = import ../hackage/hsql-mysql-1.8.2-r0-eb829afcf64fe521bb5dd7c2b9a74a1eecea533d065d63b4c0966c8cf105fec9.nix;
        revNum = 0;
        sha256 = "eb829afcf64fe521bb5dd7c2b9a74a1eecea533d065d63b4c0966c8cf105fec9";
      };
      default = "r0";
    };
  };
  "1.8.3" = {
    sha256 = "499261d57532d01083e8a2f47edc71062490635975f391ae3a35e42c4b966420";
    revisions = {
      r0 = {
        nix = import ../hackage/hsql-mysql-1.8.3-r0-55c4c12a199f7bceb1e9a9219ff1b1ed841dd442882b39b69194a7840523e022.nix;
        revNum = 0;
        sha256 = "55c4c12a199f7bceb1e9a9219ff1b1ed841dd442882b39b69194a7840523e022";
      };
      r1 = {
        nix = import ../hackage/hsql-mysql-1.8.3-r1-e1bbb71ecb6e310acf23a93e4a5e0121c8bd332e7a81dfa5bfe27ae94cbf14ab.nix;
        revNum = 1;
        sha256 = "e1bbb71ecb6e310acf23a93e4a5e0121c8bd332e7a81dfa5bfe27ae94cbf14ab";
      };
      default = "r1";
    };
  };
}