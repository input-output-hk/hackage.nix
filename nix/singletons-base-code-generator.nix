{
  "0.1" = {
    sha256 = "7e089d52de6eedce76a72b4649215783a3ba5101b674e91eef25f935f332013c";
    revisions = {
      r0 = {
        nix = import ../hackage/singletons-base-code-generator-0.1-r0-64c5a3f2e7db79ad79f9c63d75d66bd14b02328ad9bc7a5b639c6de2724eb0fe.nix;
        revNum = 0;
        sha256 = "64c5a3f2e7db79ad79f9c63d75d66bd14b02328ad9bc7a5b639c6de2724eb0fe";
      };
      r1 = {
        nix = import ../hackage/singletons-base-code-generator-0.1-r1-7c2081537654fd5092c8b67c59c609d236358b73f5eeed85889dbef2f5e458dc.nix;
        revNum = 1;
        sha256 = "7c2081537654fd5092c8b67c59c609d236358b73f5eeed85889dbef2f5e458dc";
      };
      default = "r1";
    };
  };
}