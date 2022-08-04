{
  "1.0.0" = {
    sha256 = "e2aad69eb474b580771348241c315c4a7a3d81e23c377361257523c0b2660fb0";
    revisions = {
      r0 = {
        nix = import ../hackage/gitignore-1.0.0-r0-478c90e292463fb4474a4c3b86a30e542109e79d2cd36af42f078c9cb1e4a646.nix;
        revNum = 0;
        sha256 = "478c90e292463fb4474a4c3b86a30e542109e79d2cd36af42f078c9cb1e4a646";
        };
      r1 = {
        nix = import ../hackage/gitignore-1.0.0-r1-04073ac706d6719f61a1a3304b906612514817232e43f0ed6e6e35a6ed45191f.nix;
        revNum = 1;
        sha256 = "04073ac706d6719f61a1a3304b906612514817232e43f0ed6e6e35a6ed45191f";
        };
      default = "r1";
      };
    };
  "1.0.1" = {
    sha256 = "14bf2fb4a56ec53514986536c1b63bd5c0b1404f5c9f7b7d645cf7733585520f";
    revisions = {
      r0 = {
        nix = import ../hackage/gitignore-1.0.1-r0-1a67666770b85818149577ae503a78e362b0c582d12675c5a5f047f5c37f1249.nix;
        revNum = 0;
        sha256 = "1a67666770b85818149577ae503a78e362b0c582d12675c5a5f047f5c37f1249";
        };
      default = "r0";
      };
    };
  "1.1" = {
    sha256 = "59cc0668488d3fc587b48b04293cd67fcefde64125fefc4f1d0f5682b9401084";
    revisions = {
      r0 = {
        nix = import ../hackage/gitignore-1.1-r0-b104cdf531064b7e76f888dfd49e658d9605b23bc7eb0df138faa935f78048a2.nix;
        revNum = 0;
        sha256 = "b104cdf531064b7e76f888dfd49e658d9605b23bc7eb0df138faa935f78048a2";
        };
      default = "r0";
      };
    };
  }