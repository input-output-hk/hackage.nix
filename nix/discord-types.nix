{
  "0.2.2" = {
    sha256 = "4ca75128ce745e85d3e5509900448f8c926b3e13393179268449e66a3e59558b";
    revisions = {
      r0 = {
        nix = import ../hackage/discord-types-0.2.2-r0-05688a023b06ca4993c12cbce881e2c568131a79fd6ba3b29e1a68f5f3db04c8.nix;
        revNum = 0;
        sha256 = "05688a023b06ca4993c12cbce881e2c568131a79fd6ba3b29e1a68f5f3db04c8";
        };
      r1 = {
        nix = import ../hackage/discord-types-0.2.2-r1-fcfcc34efd4f629fc6503cafbc7227258b73b603383c1bf3353df7f96f31b104.nix;
        revNum = 1;
        sha256 = "fcfcc34efd4f629fc6503cafbc7227258b73b603383c1bf3353df7f96f31b104";
        };
      default = "r1";
      };
    };
  }