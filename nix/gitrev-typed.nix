{
  "0.1" = {
    sha256 = "414ba2c15602c9ebcec64f65fd06e6f3ba03194f77b24f0ae25f1c035f1b619c";
    revisions = {
      r0 = {
        nix = import ../hackage/gitrev-typed-0.1-r0-905b696dec9c52486290cfef2d3156420de83f5b21bfb0821a37822f40ee1568.nix;
        revNum = 0;
        sha256 = "905b696dec9c52486290cfef2d3156420de83f5b21bfb0821a37822f40ee1568";
      };
      r1 = {
        nix = import ../hackage/gitrev-typed-0.1-r1-2b3ab33d4e3b787f700d849112536c9c340b7496aff86e1d49f9cf416414dff4.nix;
        revNum = 1;
        sha256 = "2b3ab33d4e3b787f700d849112536c9c340b7496aff86e1d49f9cf416414dff4";
      };
      default = "r1";
    };
  };
}