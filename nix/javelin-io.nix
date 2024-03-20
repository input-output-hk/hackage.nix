{
  "0.1.1.0" = {
    sha256 = "d594c9ee390e76749690fe65f9a0b69c3b93a56c8d9407f71a7a8069b5c9c9dc";
    revisions = {
      r0 = {
        nix = import ../hackage/javelin-io-0.1.1.0-r0-098a614320b009b55d18af01e91e396bbad1ababb81b90a266728699194d1fd9.nix;
        revNum = 0;
        sha256 = "098a614320b009b55d18af01e91e396bbad1ababb81b90a266728699194d1fd9";
        };
      r1 = {
        nix = import ../hackage/javelin-io-0.1.1.0-r1-5932770ba5b16732737854296c56deb62eaa6e96796fe969a082f0303c2f0c5c.nix;
        revNum = 1;
        sha256 = "5932770ba5b16732737854296c56deb62eaa6e96796fe969a082f0303c2f0c5c";
        };
      default = "r1";
      };
    };
  "0.1.1.1" = {
    sha256 = "667b69b8cad11b60b1f8f5f5066c607fc7cdd4a36e152702f7832de9cf05dcb0";
    revisions = {
      r0 = {
        nix = import ../hackage/javelin-io-0.1.1.1-r0-21a5ff59a22a9a362da3e70628f560cb592fdf53c0c5fff53f76e479531205e7.nix;
        revNum = 0;
        sha256 = "21a5ff59a22a9a362da3e70628f560cb592fdf53c0c5fff53f76e479531205e7";
        };
      default = "r0";
      };
    };
  }