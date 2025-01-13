{
  "5.6.3" = {
    sha256 = "8db07def30ef270504a64dc3acfb068f464f91546864a9a62741cd75eb028594";
    revisions = {
      r0 = {
        nix = import ../hackage/xz-5.6.3-r0-a20a3434c0d99807cbdc94ea2822a87b9e74a4b6fcc38f6a82a55285130cafed.nix;
        revNum = 0;
        sha256 = "a20a3434c0d99807cbdc94ea2822a87b9e74a4b6fcc38f6a82a55285130cafed";
      };
      r1 = {
        nix = import ../hackage/xz-5.6.3-r1-e2cf9b009bd23e981e94d9e5c64da5c160a1bc4617776875e51e2f13c980e128.nix;
        revNum = 1;
        sha256 = "e2cf9b009bd23e981e94d9e5c64da5c160a1bc4617776875e51e2f13c980e128";
      };
      default = "r1";
    };
  };
}