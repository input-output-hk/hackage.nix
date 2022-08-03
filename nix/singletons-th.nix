{
  "3.0" = {
    sha256 = "e294e557099ee32fc9cf89038e29475596a93b2fe5116d7ffef12e0a9e3e1cb0";
    revisions = {
      r0 = {
        nix = import ../hackage/singletons-th-3.0-r0-111458cb40a11d2c9e31bfb384d17a52fcac55c17b4c3519944a38511ae7d834.nix;
        revNum = 0;
        sha256 = "111458cb40a11d2c9e31bfb384d17a52fcac55c17b4c3519944a38511ae7d834";
        };
      r1 = {
        nix = import ../hackage/singletons-th-3.0-r1-3262fed0042d47f261ac625ccb179c785a0c53be3daf70ebf998de8e1b63b586.nix;
        revNum = 1;
        sha256 = "3262fed0042d47f261ac625ccb179c785a0c53be3daf70ebf998de8e1b63b586";
        };
      default = "r1";
      };
    };
  "3.1" = {
    sha256 = "ead456c421eb28e57580935ec5e4d8c9f9e84884d967888f53fd1fde943e1dd6";
    revisions = {
      r0 = {
        nix = import ../hackage/singletons-th-3.1-r0-5f7b1374c0f30f470a24811872cce210011f8402ce5130b6ef55098523f8dc3f.nix;
        revNum = 0;
        sha256 = "5f7b1374c0f30f470a24811872cce210011f8402ce5130b6ef55098523f8dc3f";
        };
      r1 = {
        nix = import ../hackage/singletons-th-3.1-r1-f1f19868775eec7a9bbc7d33fbdb9a0ebe2a86ef761c30e76405dbfb510539d6.nix;
        revNum = 1;
        sha256 = "f1f19868775eec7a9bbc7d33fbdb9a0ebe2a86ef761c30e76405dbfb510539d6";
        };
      r2 = {
        nix = import ../hackage/singletons-th-3.1-r2-263aa3ae480795504a22fa591a52bd598c090070f7d509b3a3607b3389364ca5.nix;
        revNum = 2;
        sha256 = "263aa3ae480795504a22fa591a52bd598c090070f7d509b3a3607b3389364ca5";
        };
      default = "r2";
      };
    };
  }