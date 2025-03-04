{
  "0.1.0.0" = {
    sha256 = "393d650aaf20c46790f628800a25785a3d79078c627169406a130ed67b07f1f9";
    revisions = {
      r0 = {
        nix = import ../hackage/web-view-colonnade-0.1.0.0-r0-518fbfcd710352e8544f1a0d62d79fb83dea97a428ec445a330ecc9758d8f532.nix;
        revNum = 0;
        sha256 = "518fbfcd710352e8544f1a0d62d79fb83dea97a428ec445a330ecc9758d8f532";
      };
      r1 = {
        nix = import ../hackage/web-view-colonnade-0.1.0.0-r1-994aef015017a2a767df542f25e972eda7ea624ba40523a39ef536ab487b8ada.nix;
        revNum = 1;
        sha256 = "994aef015017a2a767df542f25e972eda7ea624ba40523a39ef536ab487b8ada";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "e3e90d28041240a7cd902d1d304dfc742a53a105d803ee7e4d8fbc0f96bf1482";
    revisions = {
      r0 = {
        nix = import ../hackage/web-view-colonnade-0.1.0.1-r0-b702cb6c1898b9f451343dc1927133045ac1f4f454511b5de45b3d90f658bbfd.nix;
        revNum = 0;
        sha256 = "b702cb6c1898b9f451343dc1927133045ac1f4f454511b5de45b3d90f658bbfd";
      };
      default = "r0";
    };
  };
}