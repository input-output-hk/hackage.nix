{
  "0.1.0.0" = {
    sha256 = "b7bc79bb7825b6ad8debe572efc19492bbd51ff66ce059023b2180691c447d56";
    revisions = {
      r0 = {
        nix = import ../hackage/resource-registry-0.1.0.0-r0-f7580fea309d37cbfbbd46de74f8c23eea0eb0a9727512ebcb448e2db55db524.nix;
        revNum = 0;
        sha256 = "f7580fea309d37cbfbbd46de74f8c23eea0eb0a9727512ebcb448e2db55db524";
      };
      r1 = {
        nix = import ../hackage/resource-registry-0.1.0.0-r1-fcc802f44df2e156bab307a2de895241b184b122392264a770f204f07e8de647.nix;
        revNum = 1;
        sha256 = "fcc802f44df2e156bab307a2de895241b184b122392264a770f204f07e8de647";
      };
      default = "r1";
    };
  };
}