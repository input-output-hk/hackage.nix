{
  "0.1" = {
    sha256 = "28826e64d91f481011a639c96281663e2d896aa80e9268d52676b08572e8edab";
    revisions = {
      r0 = {
        nix = import ../hackage/hnn-0.1-r0-21319a151ad870e7a0de5c989a06101951c00652f06bca55305c28c2a5cbaccf.nix;
        revNum = 0;
        sha256 = "21319a151ad870e7a0de5c989a06101951c00652f06bca55305c28c2a5cbaccf";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "5cea3b1ab4be9df69328ad31c77fbf3daf0be39c0c92e17e15709ea582ce228e";
    revisions = {
      r0 = {
        nix = import ../hackage/hnn-0.2.0.0-r0-287fdb207565b1b50014dac227d389d54c637ed81724e6b889cb1e3e70d1a21e.nix;
        revNum = 0;
        sha256 = "287fdb207565b1b50014dac227d389d54c637ed81724e6b889cb1e3e70d1a21e";
        };
      default = "r0";
      };
    };
  "0.3" = {
    sha256 = "d99d8546cd6f34d3ab63d92c36bf46124ce10618d77de04c0d3ac65c12fd1543";
    revisions = {
      r0 = {
        nix = import ../hackage/hnn-0.3-r0-c1f51206d6c2ed623f255fc0c85fdd808a3cd74766fc52fb88827273bccf9907.nix;
        revNum = 0;
        sha256 = "c1f51206d6c2ed623f255fc0c85fdd808a3cd74766fc52fb88827273bccf9907";
        };
      r1 = {
        nix = import ../hackage/hnn-0.3-r1-7fb8046ff38582ffaa7297d21796c285f66c8179ea3fcf1c4daadf799d8195a2.nix;
        revNum = 1;
        sha256 = "7fb8046ff38582ffaa7297d21796c285f66c8179ea3fcf1c4daadf799d8195a2";
        };
      default = "r1";
      };
    };
  }