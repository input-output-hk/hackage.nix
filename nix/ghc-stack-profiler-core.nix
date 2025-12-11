{
  "0.1.0.0" = {
    sha256 = "2a837d44cdc5c6f3d89bfb5654f19ce1a038b4141d42208771ab253ec7b4909d";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-stack-profiler-core-0.1.0.0-r0-36d2795630f6767084d39e11ec8a408c847764b058b467ef85023cbaf201362a.nix;
        revNum = 0;
        sha256 = "36d2795630f6767084d39e11ec8a408c847764b058b467ef85023cbaf201362a";
      };
      r1 = {
        nix = import ../hackage/ghc-stack-profiler-core-0.1.0.0-r1-cc8b259a2797430a57be30575ccc713a930a0d1fd7a7f8780cbec091cd06f97a.nix;
        revNum = 1;
        sha256 = "cc8b259a2797430a57be30575ccc713a930a0d1fd7a7f8780cbec091cd06f97a";
      };
      default = "r1";
    };
  };
}