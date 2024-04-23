{
  "0.1" = {
    sha256 = "a0ad723d527b816b2681c59b34e2e2ed449f43610d4a0485cf5c808efafb7a55";
    revisions = {
      r0 = {
        nix = import ../hackage/HTTP-Simple-0.1-r0-e01ab657f95d1c545c72409ed1e0e9ff19a415611f7d031d242dcf2927f53aea.nix;
        revNum = 0;
        sha256 = "e01ab657f95d1c545c72409ed1e0e9ff19a415611f7d031d242dcf2927f53aea";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "3c497bd3f970615d3a6ba03c20874fb42cc5c38879c02ab87b532f2790bd2489";
    revisions = {
      r0 = {
        nix = import ../hackage/HTTP-Simple-0.2-r0-de19dcbbcd6f422c3b7902f6a513c71fe3d9e056851acdab5e19dc3a1308bcc1.nix;
        revNum = 0;
        sha256 = "de19dcbbcd6f422c3b7902f6a513c71fe3d9e056851acdab5e19dc3a1308bcc1";
      };
      default = "r0";
    };
  };
}