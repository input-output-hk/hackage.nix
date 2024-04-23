{
  "0.2.0" = {
    sha256 = "64a0e4ca45f479ad81397cd6f132c5cb40ad76629b7f18b92549a97432e1071d";
    revisions = {
      r0 = {
        nix = import ../hackage/papa-base-implement-0.2.0-r0-f047c8faa8e51e274ca74b4d2fc1e5e56a4e36052f38dab9dbc150572b449db0.nix;
        revNum = 0;
        sha256 = "f047c8faa8e51e274ca74b4d2fc1e5e56a4e36052f38dab9dbc150572b449db0";
      };
      r1 = {
        nix = import ../hackage/papa-base-implement-0.2.0-r1-e0bce83e04d2258364585033821dea273ea72e873cd362107444bdec505d66e5.nix;
        revNum = 1;
        sha256 = "e0bce83e04d2258364585033821dea273ea72e873cd362107444bdec505d66e5";
      };
      default = "r1";
    };
  };
  "0.3.0" = {
    sha256 = "dd46119a7895d72dac69379fc880ab781e82d9f2ea5b0f3d9541499bdec35c9f";
    revisions = {
      r0 = {
        nix = import ../hackage/papa-base-implement-0.3.0-r0-5c26470f554445d2fe2f7c1d8ef660a0925384cbb6d109d98ce9b5daa27a8fd3.nix;
        revNum = 0;
        sha256 = "5c26470f554445d2fe2f7c1d8ef660a0925384cbb6d109d98ce9b5daa27a8fd3";
      };
      default = "r0";
    };
  };
  "0.3.1" = {
    sha256 = "931d78ff582ba7594bd6ae562af92b90682892b6b8c6e1945452375d84f9971f";
    revisions = {
      r0 = {
        nix = import ../hackage/papa-base-implement-0.3.1-r0-4aebf6c11be41d39af458f2fc3095fe427a577c537caf074d38f4988b1bdc0f5.nix;
        revNum = 0;
        sha256 = "4aebf6c11be41d39af458f2fc3095fe427a577c537caf074d38f4988b1bdc0f5";
      };
      default = "r0";
    };
  };
}