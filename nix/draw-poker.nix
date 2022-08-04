{
  "0.1.0.0" = {
    sha256 = "c1910841309a0fedd6f7a412d5fbe013f10cf916f1de25d6c1a446cf41ffe7f3";
    revisions = {
      r0 = {
        nix = import ../hackage/draw-poker-0.1.0.0-r0-06d44a6cdf36889ab7490d3ab79d63f050954b3742b69b57f9e43bf350cdddd7.nix;
        revNum = 0;
        sha256 = "06d44a6cdf36889ab7490d3ab79d63f050954b3742b69b57f9e43bf350cdddd7";
        };
      r1 = {
        nix = import ../hackage/draw-poker-0.1.0.0-r1-341baa3399fd976ec6936d4b5e10806360836c502e02e76e1c71f2f0bd5fe701.nix;
        revNum = 1;
        sha256 = "341baa3399fd976ec6936d4b5e10806360836c502e02e76e1c71f2f0bd5fe701";
        };
      r2 = {
        nix = import ../hackage/draw-poker-0.1.0.0-r2-1c3d739f0ddf9a6c3c7da111787427c1651705242c0d584934fc5aa45990712a.nix;
        revNum = 2;
        sha256 = "1c3d739f0ddf9a6c3c7da111787427c1651705242c0d584934fc5aa45990712a";
        };
      default = "r2";
      };
    };
  "0.1.0.1" = {
    sha256 = "a78832b02fe72bcf83ce1970ecb7a863500fb3987a6a0c912150ad211d3e6199";
    revisions = {
      r0 = {
        nix = import ../hackage/draw-poker-0.1.0.1-r0-117d365660ca88b328416e03991ac479d8bf4048e9bc31d7e09e9c99ce8fbcb7.nix;
        revNum = 0;
        sha256 = "117d365660ca88b328416e03991ac479d8bf4048e9bc31d7e09e9c99ce8fbcb7";
        };
      r1 = {
        nix = import ../hackage/draw-poker-0.1.0.1-r1-62a11039e0b634f0b372c28d87f6fe84f40a33981211c9f2bc077135abcef629.nix;
        revNum = 1;
        sha256 = "62a11039e0b634f0b372c28d87f6fe84f40a33981211c9f2bc077135abcef629";
        };
      default = "r1";
      };
    };
  }