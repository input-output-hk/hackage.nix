{
  "0.1.0.0" = {
    sha256 = "7b2a874863f03002eb2e5960d60e5401b3bb892055a9d3ba81b2d0f12562524f";
    revisions = {
      r0 = {
        nix = import ../hackage/fin-int-0.1.0.0-r0-150340d1af11d6fa167dd96173938785e5528d2c00e5ba61e947a12bf269ec5b.nix;
        revNum = 0;
        sha256 = "150340d1af11d6fa167dd96173938785e5528d2c00e5ba61e947a12bf269ec5b";
        };
      r1 = {
        nix = import ../hackage/fin-int-0.1.0.0-r1-ee6756235307c0635a7ba7796279161a770ddc18355a61f4840d64182365063b.nix;
        revNum = 1;
        sha256 = "ee6756235307c0635a7ba7796279161a770ddc18355a61f4840d64182365063b";
        };
      default = "r1";
      };
    };
  "0.2.0" = {
    sha256 = "9036ad7136d1df2b903df21a6614f715ad131f953aae43810abb2e3f1aa34565";
    revisions = {
      r0 = {
        nix = import ../hackage/fin-int-0.2.0-r0-93ac03c8e15ee6baca9957f6c8536cf4f14d0104d06665965c2a808f3489b8d6.nix;
        revNum = 0;
        sha256 = "93ac03c8e15ee6baca9957f6c8536cf4f14d0104d06665965c2a808f3489b8d6";
        };
      r1 = {
        nix = import ../hackage/fin-int-0.2.0-r1-07234b27962bfab0f1d3c782a57a18d26ba3d39f09931bd4ef961bf9bf19f5a1.nix;
        revNum = 1;
        sha256 = "07234b27962bfab0f1d3c782a57a18d26ba3d39f09931bd4ef961bf9bf19f5a1";
        };
      r2 = {
        nix = import ../hackage/fin-int-0.2.0-r2-bab389e983884341c8694dc8ff7a587e460c078e19bc763a9465437d1a832531.nix;
        revNum = 2;
        sha256 = "bab389e983884341c8694dc8ff7a587e460c078e19bc763a9465437d1a832531";
        };
      r3 = {
        nix = import ../hackage/fin-int-0.2.0-r3-dc2c5eb5620b084be85099b4c479cc582d4ebb7fd12cc68e27e3cc1cbed98dd3.nix;
        revNum = 3;
        sha256 = "dc2c5eb5620b084be85099b4c479cc582d4ebb7fd12cc68e27e3cc1cbed98dd3";
        };
      default = "r3";
      };
    };
  }