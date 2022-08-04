{
  "0.1.0.0" = {
    sha256 = "62661340215c415e8b765aab36e4757886a9c5c998843044c766d09a10adbb1f";
    revisions = {
      r0 = {
        nix = import ../hackage/wrapped-0.1.0.0-r0-aa3d3e3f0be94fbc58f2e1a83787b2d206316d0bf6fbe9206451d23ac3d5648a.nix;
        revNum = 0;
        sha256 = "aa3d3e3f0be94fbc58f2e1a83787b2d206316d0bf6fbe9206451d23ac3d5648a";
        };
      r1 = {
        nix = import ../hackage/wrapped-0.1.0.0-r1-51babae7561703057f85c9b492618daf47b7d16015ef11e6e19b8fc0b86cc54a.nix;
        revNum = 1;
        sha256 = "51babae7561703057f85c9b492618daf47b7d16015ef11e6e19b8fc0b86cc54a";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "d77da9e5327945aa39d3287a6a59922fe696f9a588b5d08ab2b4110b6b55db01";
    revisions = {
      r0 = {
        nix = import ../hackage/wrapped-0.1.0.1-r0-0958a55e459115819aaddec5a05a181f44187e0b369ba149a37c516fbcca2ed7.nix;
        revNum = 0;
        sha256 = "0958a55e459115819aaddec5a05a181f44187e0b369ba149a37c516fbcca2ed7";
        };
      r1 = {
        nix = import ../hackage/wrapped-0.1.0.1-r1-2852522f3c67c36aff10bbda7651b5410a642502d535b7e22f0e76bdc004d461.nix;
        revNum = 1;
        sha256 = "2852522f3c67c36aff10bbda7651b5410a642502d535b7e22f0e76bdc004d461";
        };
      r2 = {
        nix = import ../hackage/wrapped-0.1.0.1-r2-7896256898d424e9e72bf4fc235701e64f76faa8ed9393c93e975338ddcd54ad.nix;
        revNum = 2;
        sha256 = "7896256898d424e9e72bf4fc235701e64f76faa8ed9393c93e975338ddcd54ad";
        };
      default = "r2";
      };
    };
  }