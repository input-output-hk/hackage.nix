{
  "0.1.0.0" = {
    sha256 = "32dd544b9ba29aca377a6f535de789de9c1f0e56b0175ccb256260e125a36d4a";
    revisions = {
      r0 = {
        nix = import ../hackage/hMPC-0.1.0.0-r0-bfcc3a6e60599da1d604832b0941730070834cb71c6c493e2d35d97087bebd40.nix;
        revNum = 0;
        sha256 = "bfcc3a6e60599da1d604832b0941730070834cb71c6c493e2d35d97087bebd40";
      };
      r1 = {
        nix = import ../hackage/hMPC-0.1.0.0-r1-c913b00f95987586d2641bea4dd1618ca57ae448d83efd8ca4c4178076f2ce2e.nix;
        revNum = 1;
        sha256 = "c913b00f95987586d2641bea4dd1618ca57ae448d83efd8ca4c4178076f2ce2e";
      };
      r2 = {
        nix = import ../hackage/hMPC-0.1.0.0-r2-a31c6323a8048f64d5e409096eb70c7a35b7f8908198a943dd1d37b86b278204.nix;
        revNum = 2;
        sha256 = "a31c6323a8048f64d5e409096eb70c7a35b7f8908198a943dd1d37b86b278204";
      };
      default = "r2";
    };
  };
  "0.1.0.1" = {
    sha256 = "303b682566200b93e41e6f244faa1d1cb040f1960b3786d37c3ef807b1c171aa";
    revisions = {
      r0 = {
        nix = import ../hackage/hMPC-0.1.0.1-r0-230250b5d6d90797ed18438acde210f88a2787edc14c3d352ab022f3bbe9b5d0.nix;
        revNum = 0;
        sha256 = "230250b5d6d90797ed18438acde210f88a2787edc14c3d352ab022f3bbe9b5d0";
      };
      default = "r0";
    };
  };
}