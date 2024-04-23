{
  "0.1" = {
    sha256 = "1336c1c5bfcc9250fb1f22cf46ef24730f29b2d2ae30dca0111aec37de1d7eec";
    revisions = {
      r0 = {
        nix = import ../hackage/posix-waitpid-0.1-r0-b5e8c5b5f97fa874270b3917d566bbc5352d22f2695c124469580816e45d6ac3.nix;
        revNum = 0;
        sha256 = "b5e8c5b5f97fa874270b3917d566bbc5352d22f2695c124469580816e45d6ac3";
      };
      r1 = {
        nix = import ../hackage/posix-waitpid-0.1-r1-b0c171edc197595d1edbbf49c22fb91a1d3ffac56316ba1023d9d7a175f15589.nix;
        revNum = 1;
        sha256 = "b0c171edc197595d1edbbf49c22fb91a1d3ffac56316ba1023d9d7a175f15589";
      };
      default = "r1";
    };
  };
}